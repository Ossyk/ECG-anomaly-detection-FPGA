import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv1D, MaxPooling1D, GlobalAveragePooling1D, Dense, Dropout
from sklearn.metrics import classification_report, confusion_matrix, roc_auc_score

import os
import numpy as np
import json, random

SEED = 42
np.random.seed(SEED)
tf.random.set_seed(SEED)
random.seed(SEED)

# Define paths
processed_data_dir = r"C:\Users\oussk\Downloads\ecg_cnn_nexys_project\data\processed"

X_train = np.load(os.path.join(processed_data_dir, "X_train.npy"))
y_train = np.load(os.path.join(processed_data_dir, "y_train.npy"))
X_val   = np.load(os.path.join(processed_data_dir, "X_val.npy"))
y_val   = np.load(os.path.join(processed_data_dir, "y_val.npy"))
X_test  = np.load(os.path.join(processed_data_dir, "X_test.npy"))
y_test  = np.load(os.path.join(processed_data_dir, "y_test.npy"))

model = tf.keras.models.load_model("cnn_model.h5")
export_dir = r"C:\Users\oussk\OneDrive\Desktop\ECG_CNN_PROJECT_ALD\ml\exported_model"
os.makedirs(export_dir, exist_ok=True)
def quantize(arr, num_bits=8):
    """Quantize array to signed int with given bit width (two's complement)."""
    max_val = np.max(np.abs(arr))
    if max_val == 0:
        scale = 1.0
    else:
        scale = (2**(num_bits - 1) - 1) / max_val
    q_arr = np.round(arr * scale).astype(np.int8 if num_bits == 8 else np.int16)
    return q_arr, scale

def shape_to_list(shape):
    return [int(dim) if dim is not None else -1 for dim in shape]

layer_configs = {}

for layer in model.layers:
    if isinstance(layer, tf.keras.layers.Conv1D):
        weights, biases = layer.get_weights()
        q_weights, w_scale = quantize(weights, num_bits=8)
        q_biases, b_scale  = quantize(biases, num_bits=16)

        # Save weights
        with open(os.path.join(export_dir, f"{layer.name}_weights.mem"), "w") as f:
            for w in q_weights.flatten(order="C"):
                f.write(f"{(np.int8(w).item() & 0xFF):02X}\n")

        # Save biases
        with open(os.path.join(export_dir, f"{layer.name}_biases.mem"), "w") as f:
            for b in q_biases.flatten():
                f.write(f"{(np.int16(b).item() & 0xFFFF):04X}\n")

        layer_configs[layer.name] = {
            "type": "Conv1D",
            "input_shape": shape_to_list(layer.input.shape),
            "output_shape": shape_to_list(layer.output.shape),
            "kernel_size": list(layer.kernel_size),
            "filters": layer.filters,
            "stride": list(layer.strides),
            "activation": getattr(layer.activation, "_name_", None),  
            "weight_scale": float(w_scale),
            "bias_scale": float(b_scale)  
        }

    elif isinstance(layer, tf.keras.layers.Dense):
        weights, biases = layer.get_weights()
        q_weights, w_scale = quantize(weights, num_bits=8)
        q_biases, b_scale  = quantize(biases, num_bits=16)

        lname = layer.name
        if lname == "dense":
            lname_out = "dense1"
        elif lname == "dense_1":
            lname_out = "dense2"
        else:
            lname_out = lname

        with open(os.path.join(export_dir, f"{lname_out}_weights.mem"), "w") as f:
            for w in q_weights.flatten(order="C"):
                f.write(f"{(np.int8(w).item() & 0xFF):02X}\n")

        with open(os.path.join(export_dir, f"{lname_out}_biases.mem"), "w") as f:
            for b in q_biases.flatten():
                f.write(f"{(np.int16(b).item() & 0xFFFF):04X}\n")

        layer_configs[lname_out] = {
            "type": "Dense",
            "input_shape": shape_to_list(layer.input.shape),
            "output_shape": shape_to_list(layer.output.shape),
            "units": layer.units,
            "activation": getattr(layer.activation, "_name_", None),
            "weight_scale": float(w_scale),
            "bias_scale": float(b_scale)
        }

    elif isinstance(layer, tf.keras.layers.MaxPooling1D):
        layer_configs[layer.name] = {
            "type": "MaxPooling1D",
            "pool_size": list(layer.pool_size),
            "stride": list(layer.strides)
        }

    elif isinstance(layer, tf.keras.layers.ReLU):
        layer_configs[layer.name] = {"type": "ReLU"}

    elif isinstance(layer, tf.keras.layers.GlobalAveragePooling1D):
        layer_configs[layer.name] = {"type": "GlobalAveragePooling1D"}

    elif isinstance(layer, tf.keras.layers.Dropout):
        layer_configs[layer.name] = {
            "type": "Dropout",
            "note": "Ignored at inference (training only)"
        }

# Save JSON config
with open(os.path.join(export_dir, "cnn_config.json"), "w") as f:
    json.dump(layer_configs, f, indent=4)

print("✅ Export complete! Weights and configs saved in:", export_dir)


def read_mem_as_int8(path):
    """Read .mem file as signed int8 (two's complement)."""
    vals = []
    with open(path, "r") as f:
        for line in f:
            v = int(line.strip(), 16)   # read as unsigned
            if v >= 128:                # two's complement adjust
                v -= 256
            vals.append(v)
    return np.array(vals, dtype=np.int8)

def read_mem_as_int16(path):
    """Read .mem file as signed int16 (two's complement)."""
    vals = []
    with open(path, "r") as f:
        for line in f:
            v = int(line.strip(), 16)
            if v >= 32768:              
                v -= 65536
            vals.append(v)
    return np.array(vals, dtype=np.int16)


def run_quantized_inference(model, X, layer_configs, export_dir, debug=False):
    out = X.astype(np.float32)

    for layer in model.layers:
        cfg = layer_configs[layer.name]

        if cfg["type"] == "Conv1D":
            weights = read_mem_as_int8(os.path.join(export_dir, f"{layer.name}_weights.mem"))
            biases  = read_mem_as_int16(os.path.join(export_dir, f"{layer.name}_biases.mem"))

            weights = weights.reshape(cfg["kernel_size"][0],
                                      cfg["input_shape"][-1],
                                      cfg["filters"]).astype(np.float32) / cfg["weight_scale"]
            biases  = biases.astype(np.float32) / cfg["bias_scale"]

            out = tf.nn.conv1d(out, filters=tf.constant(weights, dtype=tf.float32),
                               stride=cfg["stride"][0], padding="VALID")
            out = tf.nn.bias_add(out, biases)

            # apply activation
            if cfg.get("activation") == "relu":
                out = tf.nn.relu(out)

        elif cfg["type"] == "Dense":
            weights = read_mem_as_int8(os.path.join(export_dir, f"{layer.name}_weights.mem"))
            biases  = read_mem_as_int16(os.path.join(export_dir, f"{layer.name}_biases.mem"))

            weights = weights.reshape(cfg["input_shape"][-1], cfg["units"]).astype(np.float32) / cfg["weight_scale"]
            biases  = biases.astype(np.float32) / cfg["bias_scale"]

            out = tf.matmul(out, weights) + biases

            if cfg.get("activation") == "relu":
                out = tf.nn.relu(out)
            elif cfg.get("activation") == "sigmoid":
                out = tf.nn.sigmoid(out)

        elif cfg["type"] == "MaxPooling1D":
            out = tf.nn.max_pool1d(out,
                                   ksize=cfg["pool_size"][0],
                                   strides=cfg["stride"][0],
                                   padding="VALID")

        elif cfg["type"] == "ReLU":
            out = tf.nn.relu(out)

        elif cfg["type"] == "GlobalAveragePooling1D":
            out = tf.reduce_mean(out, axis=1)

        elif cfg["type"] == "Dropout":
            continue  # ignore dropout at inference

        if debug:
            print(layer.name, out.shape)

    return out.numpy()


import numpy as np
from sklearn.metrics import roc_curve, precision_recall_curve, f1_score, classification_report, confusion_matrix

# Get quantized probabilities on VALIDATION set
q_val = run_quantized_inference(model, X_val.reshape(-1,720,1), layer_configs, export_dir).ravel()

# Threshold that maximizes F1 for class 1
prec, rec, th_pr = precision_recall_curve(y_val, q_val)

f1s = 2 * (prec[1:] * rec[1:]) / (prec[1:] + rec[1:] + 1e-12)
t_opt_f1 = th_pr[np.argmax(f1s)]

print(f"Opt threshold (ROC/Youden): {t_opt_roc:.4f}")
print(f"Opt threshold (F1 on PR):  {t_opt_f1:.4f}")

t_star = float(t_opt_f1)

# Evaluate on TEST set
q_test = run_quantized_inference(model, X_test.reshape(-1,720,1), layer_configs, export_dir).ravel()
y_pred = (q_test >= t_star).astype(int)

print("\nQuantized (thresholded) Test performance:")
print(classification_report(y_test, y_pred, digits=3))
print("Confusion matrix:\n", confusion_matrix(y_test, y_pred))