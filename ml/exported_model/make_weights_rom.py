import numpy as np
import tensorflow as tf
from pathlib import Path

MODEL_PATH = "cnn_model.h5"
OUT_PATH = "weights_rom.h"

model = tf.keras.models.load_model(MODEL_PATH)

# Read layers
conv1 = model.get_layer("conv1d")
conv2 = model.get_layer("conv1d_1")
dense1 = model.get_layer("dense")
dense2 = model.get_layer("dense_1")

w1, b1 = conv1.get_weights()
w2, b2 = conv2.get_weights()
w3, b3 = dense1.get_weights()
w4, b4 = dense2.get_weights()

# ---- VALIDATION ----
assert w1.shape == (7,1,8)
assert w2.shape == (5,8,16)
assert w3.shape == (16,16)
assert w4.shape == (16,1)

# ---- Reorder for HLS ----
w1_hls = np.transpose(w1,(2,1,0))     # (8,1,7)
w2_hls = np.transpose(w2,(2,1,0))     # (16,8,5)
w3_hls = np.transpose(w3,(1,0))       # (16,16)
w4_hls = np.transpose(w4,(1,0))       # (1,16)

# ---- Nested brace emitter ----
def emit(name, arr):
    arr = np.array(arr)
    dims = "".join(f"[{d}]" for d in arr.shape)
    lines = [f"static const weight_t {name}{dims} = {{"]
    
    def rec(a, indent):
        if a.ndim == 1:  
            # --- FIX: no extra braces ---
            vals = ", ".join(f"{float(x):.6f}" for x in a)
            lines.append("    " * indent + vals + ",")
        else:
            lines.append("    " * indent + "{")
            for sub in a:
                rec(sub, indent + 1)
            lines.append("    " * indent + "},")
    
    rec(arr, 1)
    lines.append("};\n")
    return "\n".join(lines)


# ---- Write file ----
text = [
    "// Auto-generated weights ROM (original CNN model)",
    "#pragma once",
    '#include "ecg_cnn.h"\n',
    emit("ROM_conv1_w", w1_hls),
    emit("ROM_conv1_b", b1),
    emit("ROM_conv2_w", w2_hls),
    emit("ROM_conv2_b", b2),
    emit("ROM_dense1_w", w3_hls),
    emit("ROM_dense1_b", b3),
    emit("ROM_dense2_w", w4_hls),
    emit("ROM_dense2_b", b4)
]

Path(OUT_PATH).write_text("\n".join(text))

print("✅ Exported weights that MATCH the original HLS architecture.")
