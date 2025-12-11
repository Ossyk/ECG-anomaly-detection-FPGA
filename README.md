# ECG Anomaly Detection on FPGA

This project implements a real-time ECG anomaly detector using a 1D CNN accelerator on FPGA (Nexys4 DDR).
A MicroBlaze processor handles communication and control, while a custom HLS IP performs CNN inference.

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

## Requirements

* Vivado + Vitis 

* Python + NumPy, SciPy, Matplotlib, WFDB

* Nexys4 DDR board
