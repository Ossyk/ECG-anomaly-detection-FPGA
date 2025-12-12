# ECG Anomaly Detection on FPGA

This project implements a real-time ECG anomaly detector using a 1D CNN accelerator on FPGA (Nexys4 DDR).
A MicroBlaze processor handles communication and control, while a custom HLS IP performs CNN inference.


## Reproducibility & Running instructions

Prerequisites
  * OS: Windows 10 / 11
Tools:
  * Vivado 
  * Vitis 
  * Vitis HLS 
  * Python
Board:
  * Nexys4 DDR (or compatible Artix-7)

### Clone the Repository

```
git clone https://github.com/Ossyk/ECG-anomaly-detection-FPGA.git
```
***
### VIVADO

#### Open the Vivado Block Design


Open Vivado using the explicit Vivado path
```
  "path_to\vivado.bat" "path_to\ecg_cnn_bd.xpr"  
//eg:
  "C:\Xilinx\2025.1\Vivado\bin\vivado.bat" ^
  "C:\ECG-anomaly-detection-FPGA\hw_vivado\ecg_cnn_bd\ecg_cnn_bd.xpr"
```
Or simply navigate to the Vivado project directory and double-click on "ecg_cnn_bd Vivado Project File"
```
  cd ECG-anomaly-detection-FPGA\hw_vivado\ecg_cnn_bd
```

#### Open the target 

1- Open Hardware Manager \
2- Click Open Target → Auto Connect

***
### VITIS

#### Open the Vitis Workspace (Platform + Firmware)
From the project root:
```
   & "path_to\vitis.bat" -w "path_to\ECG-anomaly-detection-FPGA\hw_vitis\ecg_cnn"
//eg:
  & "C:\Xilinx\2025.1\Vitis\bin\vitis.bat" -w ^
  "C:\ECG-anomaly-detection-FPGA\hw_vitis\ecg_cnn"
```

1- Clean Platform and Application \
2- Build Platform \
3- Build Application \
4- Run → Launch on Hardware 
***
 ### PYTHON GUI 
 
* Create a Virtual Environment \
Open Command Prompt (not PowerShell):
```
  cd ECG-anomaly-detection-FPGA\gui
  python -m venv venv
  venv\Scripts\activate.bat
```
* Install Required Python Packages
```
  python -m pip install --upgrade pip
  pip install numpy pyserial matplotlib scipy wfdb
```
* Launch the GUI
```
python ecg_gui_test.py
```

The GUI allows: 
* Loading ECG samples (.hea/.dat) from ECG_anomaly_detection\data\raw 
* Sending 2-second ECG windows to the FPGA 
* Visualizing classification results (Normal / Abnormal) 

### Notes on Reproducibility

* The Python GUI must be run inside the virtual environment 
* The FPGA must be programmed before launching the GUI

### Optional: Open the Vitis HLS Workspace (Accelerator)
```
& "C:\Xilinx\2025.1\Vitis\bin\vitis.bat" -w ^
"C:\ECG-anomaly-detection-FPGA\hw_vitis\ecg_cnn\ecg_hls"
```
This workspace contains the CNN accelerator implemented with Vitis HLS.
***
## Features

* 1D CNN trained on MIT-BIH Arrhythmia Dataset

* Fixed-point hardware accelerator (ap_fixed<12,3>)

* MicroBlaze firmware for UART communication and BRAM management

* Python GUI for sending ECG segments and visualizing results

* Real-time classification with FPGA LEDs/7-segment output

## Data & Preprocessing

* 2-second windows (720 samples @ 360 Hz)

* Band-pass filtering (0.5–40 Hz)

* Min-max normalization

* Labels derived from MIT-BIH annotations (N = normal, others = abnormal)

## Workflow

* PC GUI sends a 720-sample ECG segment

* MicroBlaze writes samples into BRAM

* CNN accelerator runs inference (≈0.6 ms)

* Result is returned to the PC and displayed on FPGA LEDs/7-seg

## Structure

* /vitis/ – CNN accelerator (Vitis HLS) + MicroBlaze C application (Vitis platform & application)

* /vivado/ – Block design and exported XSA

* /gui/ – Python interface and preprocessing code

* /data/ – Raw dataset and processed numpy arrays


