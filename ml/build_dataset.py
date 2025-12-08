# 1 imports
import numpy as np
from scipy.signal import butter, filtfilt #FOR preprocessing
import wfdb
import os

#print(wfdb.__version__)

length=2 #PERSONAL CHOICE TO BE JUSTIFIED
method="minmax" #can be modified later


def bandpass_filter(signal, fs, low=0.5, high=40.0, order=4):
    """Apply band-pass Butterworth filter to ECG signal."""
    nyq = 0.5 * fs
    low_cut = low / nyq
    high_cut = high / nyq
    b, a = butter(order, [low_cut, high_cut], btype='band')
    return filtfilt(b, a, signal)

def preprocess_segment(segment, fs, method):
    """Filter + normalize one ECG segment."""
    # Step 1: Band-pass filter
    filtered = bandpass_filter(segment, fs)

    # Step 2: Normalization
    if method == "zscore":
        return (filtered - np.mean(filtered)) / (np.std(filtered) + 1e-8)
    elif method == "minmax":
        return 2 * (filtered - np.min(filtered)) / (np.max(filtered) - np.min(filtered) + 1e-8) - 1
    else:
        return filtered

def extract_segments(record, ann, fs, win_sec,method):
    """
    Cut the ECG into fixed-length windows and assign binary labels.
    Label = "abnormal" if any non-N beat is inside the window.
    """
    win_size = int(win_sec * fs)
    X, y = [], []

    signal = record.p_signal[:,0]   # use lead MLII
    n_samples = len(signal)

    # loop with stride = window size (no overlap)
    for start in range(0, n_samples - win_size, win_size):
        end = start + win_size
        seg = signal[start:end]
        seg = preprocess_segment(seg, fs, method)

        # find annotation symbols within this window
        mask = (ann.sample >= start) & (ann.sample < end)
        ann_in_window = np.array(ann.symbol)[mask]  # convert to array before indexing

        # define binary label: 0=Normal, 1=Abnormal
        if any(sym != 'N' for sym in ann_in_window):
            label = 1 #ABNORMAL
        else:
            label = 0 #NORMAL

        X.append(seg)
        y.append(label)

    return np.array(X), np.array(y)
    
def build_dataset(record_list,data_dir, win_sec=length, method=method):
    X_all, y_all = [], []

    for rec in record_list:
        record_path = os.path.join(data_dir, str(rec))
        try:
            record = wfdb.rdrecord(record_path)
            ann = wfdb.rdann(record_path, 'atr')
        except Exception as e:
            print(f"Skipping {rec}, error: {e}")
            continue

        X, y = extract_segments(record, ann, fs=record.fs, win_sec=length, method=method)
        X_all.append(X)
        y_all.append(y)

        print(f"Record {rec}: {X.shape[0]} segments")

    # Concatenate all records into one dataset
    X_all = np.vstack(X_all)
    y_all = np.hstack(y_all)
    return X_all, y_all

def collect_labels(record_list, data_dir):
    fs_X, fs_y, fs_ids = [], [], []

    for rec in record_list:
        record_path = os.path.join(data_dir, str(rec))

        try:
            record = wfdb.rdrecord(record_path)
            ann = wfdb.rdann(record_path, "atr")
        except Exception as e:
            print(f"Skipping record {rec}: {e}")
            continue

        X, y = extract_segments(record, ann, fs=record.fs, win_sec=length, method=method)

        if len(X) == 0:
            print(f"⚠ Record {rec} has no valid segments. Skipping.")
            continue

        # Store first 720-sample window
        fs_X.append(X[1])      # second segment
        fs_y.append(y[1])      # second segment label
        fs_ids.append(rec)     # patient number

        print(f"✔ Included record {rec}, first label={y[1]}")

    return np.array(fs_X), np.array(fs_y), np.array(fs_ids)


# Define patient-wise groups
train_records = [100,101,102,103,104,105,106,107,108,109,
                 111,112,113,114,115,116,117,118,119,
                 200,201,202,203,205,207,208,209,232,233,234] #68% train (weight update)
val_records   = [210,212,213,214,215,217,219] #16% validation (detects overfit, tune hyperparam, decides early stop)
test_records  = [220,221,222,223,228,230,231,210,212,213,214,215,217,219] #16% test

raw_data_dir = r"C:\Users\oussk\OneDrive\Desktop\ECG_CNN_PROJECT_ALD\data\raw"
processed_data_dir = r"C:\Users\oussk\OneDrive\Desktop\ECG_CNN_PROJECT_ALD\data\processed"

if __name__ == "__main__":
# makes sure that certain code only runs when the file is executed directly, not when it’s imported.

    X_train, y_train = build_dataset(train_records, raw_data_dir,length,method)
    X_val, y_val     = build_dataset(val_records, raw_data_dir,length,method)
    X_test, y_test   = build_dataset(test_records, raw_data_dir,length,method)

    # Save to processed folder
    np.save(os.path.join(processed_data_dir, "X_train.npy"), X_train.astype(np.float32))
    np.save(os.path.join(processed_data_dir, "y_train.npy"), y_train.astype(np.int8))

    np.save(os.path.join(processed_data_dir, "X_val.npy"), X_val.astype(np.float32))
    np.save(os.path.join(processed_data_dir, "y_val.npy"), y_val.astype(np.int8))

    np.save(os.path.join(processed_data_dir, "X_test.npy"), X_test.astype(np.float32))
    np.save(os.path.join(processed_data_dir, "y_test.npy"), y_test.astype(np.int8))

    fs_X_train, fs_y_train, fs_ids_train = collect_labels(train_records, raw_data_dir)
    fs_X_val, fs_y_val, fs_ids_val = collect_labels(val_records, raw_data_dir)
    fs_X_test, fs_y_test, fs_ids_test = collect_labels(test_records, raw_data_dir)

    #np.save("fs_X_train.npy", fs_X_train)
    #np.save("fs_y_train.npy", fs_y_train)
    #np.save("fs_ids_train.npy", fs_ids_train)

    #np.save("fs_X_val.npy", fs_X_val)
    #np.save("fs_y_val.npy", fs_y_val)
    #np.save("fs_ids_val.npy", fs_ids_val)

    #np.save("fs_X_test.npy", fs_X_test)
    #np.save("fs_y_test.npy", fs_y_test)
    #np.save("fs_ids_test.npy", fs_ids_test)

    print("Datasets saved in data/processed/")



