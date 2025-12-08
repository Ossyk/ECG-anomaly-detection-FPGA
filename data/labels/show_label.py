import numpy as np
import os


processed_data_dir = r"C:\Users\oussk\OneDrive\Desktop\ECG_CNN_PROJECT_ALD\data\processed"

X_train=np.load(os.path.join(processed_data_dir,"X_train.npy"))
X_val=np.load(os.path.join(processed_data_dir,"X_val.npy"))
X_test=np.load(os.path.join(processed_data_dir,"X_test.npy"))

y_train=np.load(os.path.join(processed_data_dir,"y_train.npy"))

print(X_train.shape)
print(X_val.shape)
print(X_test.shape)

for i in range(1804,1814,1):
    print(y_train[i])



