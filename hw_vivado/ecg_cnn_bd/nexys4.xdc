## ==========================================================
##   Nexys4 DDR Board Constraints (ECG-CNN Project)
##   Author :Kasraoui & Zappala / Advanced Logic Design
##   Purpose: Minimal clean .xdc for ECG anomaly detection demo
## ==========================================================

## ----------------------------
##  CLOCK  (100 MHz onboard)
## ----------------------------
set_property PACKAGE_PIN E3 [get_ports clk_100MHz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
create_clock -add -name clk_100MHz -period 10.00 -waveform {0 5} [get_ports clk_100MHz]

## ----------------------------
##  RESET BUTTON (CPU_RESET)
##  BTN0 = C12  (center button)
## ----------------------------
set_property PACKAGE_PIN C12 [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS33 [get_ports reset_rtl_0]

## ----------------------------
##  UART  (USB-UART via FT2232HQ)
## ----------------------------
# RX: FPGA receives data from PC (UART TX → FPGA RX)
set_property PACKAGE_PIN D10 [get_ports uart_rtl_1_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_rxd]

# TX: FPGA sends data to PC (UART RX ← FPGA TX)
set_property PACKAGE_PIN A10 [get_ports uart_rtl_1_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_txd]

## ----------------------------
##  STATUS LEDs
## ----------------------------
# LD0 (far right) → NORMAL (steady ON when normal)
set_property PACKAGE_PIN H17 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

# LD15 (far left) → ABNORMAL (blinks when arrhythmia)
set_property PACKAGE_PIN V11 [get_ports {LED[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]

## ==========================================================
##  OPTIONAL FUTURE SIGNALS (keep commented)
## ==========================================================

## 7-segment display (for heart rate or state display)
# set_property PACKAGE_PIN T10 [get_ports {SSEG_CA[0]}]
# set_property PACKAGE_PIN R10 [get_ports {SSEG_CA[1]}]
# set_property PACKAGE_PIN K16 [get_ports {SSEG_CA[2]}]
# set_property PACKAGE_PIN K13 [get_ports {SSEG_CA[3]}]
# set_property PACKAGE_PIN P15 [get_ports {SSEG_CA[4]}]
# set_property PACKAGE_PIN T11 [get_ports {SSEG_CA[5]}]
# set_property PACKAGE_PIN L18 [get_ports {SSEG_CA[6]}]
# set_property PACKAGE_PIN H15 [get_ports {SSEG_CA[7]}]
# set_property PACKAGE_PIN J17 [get_ports {SSEG_AN[0]}]
# set_property PACKAGE_PIN J18 [get_ports {SSEG_AN[1]}]
# set_property PACKAGE_PIN T9  [get_ports {SSEG_AN[2]}]
# set_property PACKAGE_PIN J14 [get_ports {SSEG_AN[3]}]
# set_property PACKAGE_PIN P14 [get_ports {SSEG_AN[4]}]
# set_property PACKAGE_PIN T14 [get_ports {SSEG_AN[5]}]
# set_property PACKAGE_PIN K2  [get_ports {SSEG_AN[6]}]
# set_property PACKAGE_PIN U13 [get_ports {SSEG_AN[7]}]

## Switches, additional LEDs, and PMOD headers
## can be added later for manual control or sensor interfaces.

## ==========================================================
## END OF FILE
## ==========================================================
