ECG Anomaly Detection on FPGA (Basys3)

This project implements a 1D CNN accelerator for ECG anomaly detection on the Basys3 (Artix-7 XC7A35T) FPGA using Vitis HLS 2025.1 and Vivado 2025.1.

📌 Project Overview

Trained a 1D Convolutional Neural Network (CNN) in Python/TensorFlow.

Exported quantized weights/biases to .mem files.

Implemented the CNN inference pipeline in C++ for HLS.

Verified functionality with C Simulation and C/RTL Co-Simulation.

Generated synthesizable VHDL IP and integrated into Vivado with MicroBlaze + UART.

🏗️ CNN Architecture

Conv1D + ReLU (8 filters, kernel=7)

MaxPooling1D (pool=2)

Conv1D + ReLU (16 filters, kernel=5)

Global Average Pooling

Dense + ReLU (16 units)

Dense + Sigmoid (1 unit, anomaly probability)

⚡ Performance (from HLS synthesis)

Latency: ~71,266 cycles ≈ 0.71 ms per ECG window

Input window: 2 seconds (720 samples)

Speedup: ~2800× faster than real-time

Resource usage (Basys3 limits in parentheses):

BRAM: ~65 (50 available) ⚠️ tight

DSP: ~88 (90 available) ⚠️ tight

LUTs: ~19.6k (33.3k available)

FFs: ~18.5k (41.6k available)

✅ Functionally correct, passes C/RTL cosimulation.
⚠️ May require BRAM/DSP optimizations if Vivado fails to place/route.

🚀 Workflow

HLS

Write CNN in ecg_cnn.cpp

Simulate (C Simulation)

Synthesize (C Synthesis)

Verify RTL match (C/RTL Cosimulation)

Export IP (ip_catalog)

Vivado

Import CNN IP into block design

Add MicroBlaze + UART Lite + AXI BRAM

Connect AXI buses + run automation

Generate bitstream

Vitis (firmware)

Load weights & input into BRAM

Start CNN accelerator, poll DONE

Read output → send to PC over UART

📡 Next Steps

Optimize BRAM usage (#pragma HLS STREAM or ROM mapping).

Test Vivado bitstream on Basys3 board.

Integrate real ECG data from SD card or sensor via UART.
