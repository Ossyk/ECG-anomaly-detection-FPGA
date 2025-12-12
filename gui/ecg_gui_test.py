import os
import time
import struct
import serial
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Button, Slider
from tkinter import Tk, Label, Button as TkButton, filedialog, messagebox
from scipy.signal import butter, filtfilt

#dependency for PhysioNet
try:
    import wfdb
    WFDB_AVAILABLE = True
except ImportError:
    WFDB_AVAILABLE = False

# Configuration
SER_BAUD = 115200
FS = 360             # Sampling freq
WIN_SEC = 2          # Segment duration (seconds)
DEFAULT_THR = 0.4   # Default threshold


class FPGA:
    
    def __init__(self, port=None, simulate=False):
        self.simulate = simulate
        self.ser = None

        if simulate or port is None:
            print("⚙️  Simulation mode enabled")
            return

        try:
            self.ser = serial.Serial(port, SER_BAUD, timeout=3)
            time.sleep(2)  
            self.ser.reset_input_buffer()
            self.ser.reset_output_buffer()
            print(f"✅ Connected to {port}")
        except serial.SerialException as e:
            print(f"⚠️  Could not open {port}: {e}")
            self.simulate = True

    def _write(self, pkt: bytes):
        if self.simulate or not self.ser:
            return
        self.ser.write(pkt)
        self.ser.flush()

    def _read_reply(self, length=5):
        if self.simulate or not self.ser:
            return None
        reply = bytearray()
        for _ in range(20):  
            chunk = self.ser.read(length - len(reply))
            if not chunk:
                break
            reply += chunk
            if len(reply) >= length:
                break
        return bytes(reply)

    def set_thresh_q15(self, thr: float):
        if self.simulate:
            return
        q15 = int(thr * 32768)
        pkt = bytes([0xA5, ord('T'), q15 & 0xFF, (q15 >> 8) & 0xFF])
        print(f"→ [T] Threshold = {thr:.2f} ({q15})")
        self._write(pkt)
        self.ser.flush()
        time.sleep(2.0)  
        self.ser.reset_input_buffer()
        self.ser.reset_output_buffer()


    def send_segment(self, seg_int16):
        """Send ECG segment and read FPGA reply"""
        if self.simulate:
            print("🧠 Simulated inference")
            label = np.random.choice([0, 1])
            score = np.random.randint(2000, 6000)
            return label, score
        # 🔥 IMPORTANT: purge UART before sending a new command
        self.ser.reset_input_buffer()
        time.sleep(0.05)
        n = len(seg_int16)
        pkt = bytearray([0xA5, ord('S'), n & 0xFF, (n >> 8) & 0xFF])

        for v in seg_int16:
            pkt += struct.pack('<h', int(v))
        
        print(f"→ [S] Sending {n} samples ({len(pkt)} bytes)")
       
        print(f"🕒 Sending segment header now...")
        self._write(pkt)
        self.ser.flush()
        print(f"✅ Packet sent. Waiting for reply...")

        reply = self._read_reply(5)
        print(f"← Raw reply: {reply}")

        if not reply or len(reply) != 5 or reply[0] != 0x5A or reply[1] != ord('R'):
            print("⚠️ Invalid reply from FPGA")
            return None

        label = reply[2]
        score = struct.unpack('<h', reply[3:5])[0]
        print(f"✅ FPGA responded — label={label}, score={score}")
        return label, score

# ======================================================
# Signal preprocessing (same as training)
# ======================================================
def bandpass_filter(signal, fs=FS, low=0.5, high=40.0, order=4):
    nyq = 0.5 * fs
    b, a = butter(order, [low/nyq, high/nyq], btype='band')
    return filtfilt(b, a, signal)

def preprocess_segment(segment, fs=FS, method="minmax"):
    filt = bandpass_filter(segment, fs)
    if method == "zscore":
        return (filt - np.mean(filt)) / (np.std(filt) + 1e-8)
    elif method == "minmax":
        return 2 * (filt - np.min(filt)) / (np.max(filt) - np.min(filt) + 1e-8) - 1
    return filt

def normalize_seg(seg):
    q = np.round(seg * 512.0)                # Q3.9
    q = np.clip(q, -2048, 2047)              # ap_fixed<12,3> range
    return q.astype(np.int16)

# ======================================================
# File loading
# ======================================================
def load_ecg_file():
    root = Tk()
    root.withdraw()
    try:
        path = filedialog.askopenfilename(
            parent=root,
            title="Select ECG sample (.npy / .csv / .dat/.hea)",
            filetypes=[("ECG files", "*.npy *.csv *.dat *.hea"), ("All", "*.*")]
        )
    finally:
        root.destroy()

    if not path:
        return None, None

    ext = os.path.splitext(path)[1].lower()
    try:
        if ext == ".npy":
            sig = np.load(path)
        elif ext == ".csv":
            sig = np.loadtxt(path, delimiter=",")
        elif ext in [".dat", ".hea"] and WFDB_AVAILABLE:
            rec_name = os.path.splitext(path)[0]
            record = wfdb.rdrecord(rec_name)
            sig = record.p_signal[:, 0]
        else:
            raise ValueError("Unsupported file type")
    except Exception as e:
        messagebox.showerror("Error", f"Failed to load ECG: {e}")
        return None, None

    if len(sig) > FS * WIN_SEC:
        sig = sig[:FS * WIN_SEC]

    seg = preprocess_segment(sig, FS, "minmax")
    seg_i16 = normalize_seg(seg)
    print(f"📈 Loaded ECG file ({len(seg)} samples)")
    return seg, seg_i16

# ======================================================
# Visualization
# ======================================================
def show_plot(seg, seg_i16, fpga, back_callback):
    thr = DEFAULT_THR
    fpga.set_thresh_q15(thr)
    
    #print("seg length =", len(seg))
    #print("First 20 normalized =", seg[:20])
    #print("First 20 Q3.9       =", seg_i16[:20])

    result = fpga.send_segment(seg_i16)
    


    fig, ax = plt.subplots(figsize=(7, 4))
    plt.subplots_adjust(bottom=0.25)
    ax.plot(seg, color='black', lw=1.2)
    ax.set_ylim(-1.2, 1.2)
    ax.set_title("ECG 2-second Segment")

    txt = ax.text(0.02, 0.9, "", transform=ax.transAxes,
                  bbox=dict(fc='w', alpha=0.7))


    # Back button
    ax_btn = plt.axes([0.4, 0.02, 0.2, 0.06])
    b_reload = Button(ax_btn, 'Back')
    b_reload.on_clicked(lambda e: (plt.close(fig), back_callback()))

    # Display classification
    if result:
        label, score = result
        color = '#ddffdd' if label == 0 else '#ffcccc'
        text = f"{'NORMAL' if label == 0 else 'ABNORMAL'} | score={score}"
    else:
        color = '#ffffcc'
        text = "⚠ No reply from FPGA"

    ax.set_facecolor(color)
    txt.set_text(text)
    plt.show()

# ======================================================
# Orchestration: file → plot → back
# ======================================================
def select_and_plot(fpga, back_callback):
    seg, seg_i16 = load_ecg_file()
    if seg is not None:
        show_plot(seg, seg_i16, fpga, back_callback)
    else:
        back_callback()

# ======================================================
# Welcome Screen (Tkinter)
# ======================================================
def welcome_window(fpga):
    root = Tk()
    root.title("ECG-CNN Analyzer")
    root.geometry("360x200")
    root.configure(bg="#eef6ff")

    import tkinter.font as tkFont
    font_title = tkFont.Font(size=14, weight="bold")
    font_btn = tkFont.Font(size=11)

    Label(root, text="Welcome to ECG-CNN Analyzer",
          bg="#eef6ff", font=font_title).pack(pady=20)

    def open_selection():
        root.withdraw()
        select_and_plot(fpga, lambda: root.deiconify())

    TkButton(root, text="Select ECG Sample",
             command=open_selection,
             bg="#007acc", fg="white", font=font_btn, width=20).pack(pady=10)

    TkButton(root, text="Exit",
             command=root.destroy,
             bg="#ff6666", fg="white", font=font_btn, width=10).pack(pady=5)

    root.mainloop()

# ======================================================
# Entry Point
# ======================================================
if __name__ == "__main__":
    simulate = False
    fpga_port = "COM4"  
    fpga = FPGA(fpga_port, simulate=simulate)
    welcome_window(fpga)

