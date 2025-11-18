import os
os.environ['TF_ENABLE_ONEDNN_OPTS'] = '0'
from sklearn.svm import LinearSVC
from sklearn.metrics import classification_report, confusion_matrix, roc_auc_score
import numpy as np

processed_data_dir = r"C:\Users\oussk\OneDrive\Desktop\02 y 02 s\Advanced Logic Design\ecg-project\data\processed"
X_train = np.load(os.path.join(processed_data_dir, "X_train.npy"))
y_train = np.load(os.path.join(processed_data_dir, "y_train.npy"))
X_val   = np.load(os.path.join(processed_data_dir, "X_val.npy"))
y_val   = np.load(os.path.join(processed_data_dir, "y_val.npy"))
X_test  = np.load(os.path.join(processed_data_dir, "X_test.npy"))
y_test  = np.load(os.path.join(processed_data_dir, "y_test.npy"))

models={}
models['Support Vector Machines'] = LinearSVC()

from sklearn.metrics import accuracy_score, precision_score, recall_score

accuracy, precision, recall = {}, {}, {}

for key in models.keys():
    print("running..")

    # Fit the classifier
    models[key].fit(X_train, y_train)
    
    # Make predictions
    predictions = models[key].predict(X_test)
    
    # Calculate metrics
    accuracy[key] = accuracy_score(predictions, y_test)
    precision[key] = precision_score(predictions, y_test)
    recall[key] = recall_score(predictions, y_test)
    
    

import pandas as pd

df_model = pd.DataFrame(index=models.keys(), columns=['Accuracy', 'Precision', 'Recall'])
df_model['Accuracy'] = accuracy.values()
df_model['Precision'] = precision.values()
df_model['Recall'] = recall.values()

print(df_model)
print("terminated")
