import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv1D, MaxPooling1D, GlobalAveragePooling1D, Dense, Dropout
from tensorflow.keras.callbacks import EarlyStopping, ReduceLROnPlateau


import os
os.environ['TF_ENABLE_ONEDNN_OPTS'] = '0'
from sklearn.metrics import classification_report, confusion_matrix, roc_auc_score
import numpy as np
import random
SEED = 42
np.random.seed(SEED)
tf.random.set_seed(SEED)
random.seed(SEED)


########################## TRAINING CNN ##########################


processed_data_dir = r"C:\Users\oussk\OneDrive\Desktop\02y02s\ALD\ecg-project\data\processed"
X_train = np.load(os.path.join(processed_data_dir, "X_train.npy"))
y_train = np.load(os.path.join(processed_data_dir, "y_train.npy"))
X_val   = np.load(os.path.join(processed_data_dir, "X_val.npy"))
y_val   = np.load(os.path.join(processed_data_dir, "y_val.npy"))
X_test  = np.load(os.path.join(processed_data_dir, "X_test.npy"))
y_test  = np.load(os.path.join(processed_data_dir, "y_test.npy"))

# Define model
model = Sequential([
    Conv1D(filters=8, kernel_size=7, activation='relu', input_shape=(720, 1)),
    MaxPooling1D(pool_size=2),
    Conv1D(filters=16, kernel_size=5, activation='relu'),
    GlobalAveragePooling1D(),
    Dense(16, activation='relu'),
    Dropout(0.5),
    Dense(1, activation='sigmoid')  # binary classification
])

model.compile(optimizer='adam',
              loss='binary_crossentropy',
              metrics=['accuracy',
                       tf.keras.metrics.Precision(),
                       tf.keras.metrics.Recall()])
model.summary() #forces the model to “build” (initialize weights).
callbacks = [
    EarlyStopping(monitor='val_loss', patience=5, restore_best_weights=True),
    ReduceLROnPlateau(monitor='val_loss', factor=0.5, patience=3, min_lr=1e-5)
]

history = model.fit(
    X_train, y_train,
    validation_data=(X_val, y_val),
    epochs=30,
    batch_size=64,
    class_weight={0:1, 1:1.5},  # give more weight to abnormal so the model doesn’t ignore them in favor of predicting “normal” all the time. This helps reduce false negatives, which is critical in medical diagnosis.
    callbacks=callbacks,
    verbose=1
)

THRESHOLD = 0.4   

def classify_signal(probs, threshold=0.4):
    """
    Convert sigmoid probabilities into binary predictions
    using a custom threshold.
    """
    return (probs >= threshold).astype(int)

y_pred_prob = model.predict(X_test).ravel()
y_pred = classify_signal(y_pred_prob, threshold=0.4)

print("CNN Test performance:")
print(classification_report(y_test, y_pred))
print("Confusion matrix:\n", confusion_matrix(y_test, y_pred))
print("ROC-AUC:", roc_auc_score(y_test, y_pred_prob))

# Save trained model
model.save("cnn_model.h5")

