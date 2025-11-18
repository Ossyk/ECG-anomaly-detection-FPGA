import os
import numpy as np
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import classification_report, confusion_matrix

processed_data_dir = r"C:\Users\oussk\OneDrive\Desktop\02y02s\ALD\ecg-project\data\processed"

X_train = np.load(os.path.join(processed_data_dir, "X_train.npy"))
y_train = np.load(os.path.join(processed_data_dir, "y_train.npy"))
X_val   = np.load(os.path.join(processed_data_dir, "X_val.npy"))
y_val   = np.load(os.path.join(processed_data_dir, "y_val.npy"))
X_test  = np.load(os.path.join(processed_data_dir, "X_test.npy"))
y_test  = np.load(os.path.join(processed_data_dir, "y_test.npy"))

print("Train:", X_train.shape, y_train.shape)
print("Val:  ", X_val.shape, y_val.shape)
print("Test: ", X_test.shape, y_test.shape)

clf = LogisticRegression(max_iter=200, class_weight="balanced")
clf.fit(X_train, y_train)


print("Validation performance:")
y_val_pred = clf.predict(X_val)
print(classification_report(y_val, y_val_pred))

y_test_pred = clf.predict(X_test)
print("Test performance:")
print(classification_report(y_test, y_test_pred))
print("Confusion matrix:\n", confusion_matrix(y_test, y_test_pred))

from sklearn.metrics import roc_auc_score
y_proba = clf.predict_proba(X_test)[:,1]
auc = roc_auc_score(y_test, y_proba)
print("ROC-AUC:", auc)

import time
start = time.time()
clf.predict(X_test[:1000])  # run on 1000 samples
end = time.time()
latency = (end-start)/1000 * 1000  # ms per sample
print("Inference Latency (ms):", latency)

