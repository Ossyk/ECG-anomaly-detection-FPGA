import numpy as np
import os

np.set_printoptions(threshold=np.inf)

processed_data_dir = r"C:\Users\oussk\Downloads\ecg_cnn_BACKUP_1\data\processed"

X_train=np.load(os.path.join(processed_data_dir,"X_train.npy"))
y_train=np.load(os.path.join(processed_data_dir,"y_train.npy"))


#print(X_train)
print(y_train[-4])
print(y_train[-5])
