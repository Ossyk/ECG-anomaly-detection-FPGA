from sklearn.linear_model import Perceptron
from sklearn.metrics import classification_report, confusion_matrix
import os
import numpy as np


processed_data_dir = r"C:\Users\oussk\OneDrive\Desktop\02 y 02 s\Advanced Logic Design\ecg-project\data\processed"

X_train = np.load(os.path.join(processed_data_dir, "X_train.npy"))
y_train = np.load(os.path.join(processed_data_dir, "y_train.npy"))
X_val   = np.load(os.path.join(processed_data_dir, "X_val.npy"))
y_val   = np.load(os.path.join(processed_data_dir, "y_val.npy"))
X_test  = np.load(os.path.join(processed_data_dir, "X_test.npy"))
y_test  = np.load(os.path.join(processed_data_dir, "y_test.npy"))

clf = Perceptron(max_iter=200, class_weight="balanced", random_state=42)
clf.fit(X_train, y_train)

y_pred = clf.predict(X_test)

print("Perceptron Test performance:")
print(classification_report(y_test, y_pred))
print("Confusion matrix:\n", confusion_matrix(y_test, y_pred))
