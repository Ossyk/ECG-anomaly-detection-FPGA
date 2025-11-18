## ==========================================================
##   Basys3 Board Constraints (ECG-CNN Project)
##   Author : Houssem Attiya / Advanced Logic Design
##   Purpose: Minimal clean .xdc for ECG anomaly detection demo
## ==========================================================

## ----------------------------
##  CLOCK  (100 MHz onboard)
## ----------------------------
set_property PACKAGE_PIN W5 [get_ports clk_100MHz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
create_clock -add -name clk_100MHz -period 10.00 -waveform {0 5} [get_ports clk_100MHz]

## ----------------------------
##  RESET  (BTN1 = T18)
## ----------------------------
set_property PACKAGE_PIN T18 [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS33 [get_ports reset_rtl_0]

## ----------------------------
##  UART  (FTDI USB-UART bridge)
## ----------------------------
# RX: FPGA receives from PC
set_property PACKAGE_PIN B18 [get_ports uart_rtl_1_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_rxd]

# TX: FPGA transmits to PC
set_property PACKAGE_PIN A18 [get_ports uart_rtl_1_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_txd]

## ----------------------------
##  STATUS LEDs
## ----------------------------
# LD0 (far left)  → NORMAL (OK)
set_property PACKAGE_PIN U16 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

# LD15 (far right) → ABNORMAL (Arrhythmia)
set_property PACKAGE_PIN L1 [get_ports {LED[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]

## ==========================================================
##  OPTIONAL FUTURE SIGNALS (keep commented)
## ==========================================================

## 7-segment display
# set_property PACKAGE_PIN W7 [get_ports {SSEG_CA[0]}]
# set_property PACKAGE_PIN W6 [get_ports {SSEG_CA[1]}]
# set_property PACKAGE_PIN U8 [get_ports {SSEG_CA[2]}]
# set_property PACKAGE_PIN V8 [get_ports {SSEG_CA[3]}]
# set_property PACKAGE_PIN U5 [get_ports {SSEG_CA[4]}]
# set_property PACKAGE_PIN V5 [get_ports {SSEG_CA[5]}]
# set_property PACKAGE_PIN U7 [get_ports {SSEG_CA[6]}]
# set_property PACKAGE_PIN V7 [get_ports {SSEG_CA[7]}]
# set_property PACKAGE_PIN U2 [get_ports {SSEG_AN[0]}]
# set_property PACKAGE_PIN U4 [get_ports {SSEG_AN[1]}]
# set_property PACKAGE_PIN V4 [get_ports {SSEG_AN[2]}]
# set_property PACKAGE_PIN W4 [get_ports {SSEG_AN[3]}]

## Additional LEDs and switches are already defined in the Digilent template
## You can uncomment them later if you want extra indicators or manual modes.

## ==========================================================
## END OF FILE
## ==========================================================
