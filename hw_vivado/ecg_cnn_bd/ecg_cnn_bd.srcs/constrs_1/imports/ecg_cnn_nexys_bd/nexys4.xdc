## ==========================================================
##   Nexys4 DDR Board Constraints (ECG-CNN Project)
##   Cleaned for LEDs (axi_gpio_0) + 7-segment (axi_gpio_1)
## ==========================================================

## ----------------------------
##  CLOCK  (100 MHz onboard)
## ----------------------------
set_property PACKAGE_PIN E3 [get_ports clk_100MHz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
create_clock -add -name clk_100MHz -period 10.00 -waveform {0 5} [get_ports clk_100MHz]

## ----------------------------
##  RESET BUTTON  (BTN0 → CPU_RESET)
## ----------------------------
set_property PACKAGE_PIN C12 [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS33 [get_ports reset_rtl_0]

## ----------------------------
##  UART  (USB-UART via FT2232HQ)
## ----------------------------
# RX: FPGA receives data from PC
set_property PACKAGE_PIN C4 [get_ports uart_rtl_1_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_rxd]

# TX: FPGA sends data to PC
set_property PACKAGE_PIN D4 [get_ports uart_rtl_1_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_1_txd]
## ----------------------------
##  STATUS LEDs (axi_gpio_0)
## ----------------------------
# LD0 (far right) → NORMAL
set_property PACKAGE_PIN H17 [get_ports {gpio_rtl_0_tri_o[0]}]
# LD15 (far left) → ABNORMAL
set_property PACKAGE_PIN V11 [get_ports {gpio_rtl_0_tri_o[1]}]
# LD1 (next to LD0) → NO-REPLY debug
set_property PACKAGE_PIN T15 [get_ports {gpio_rtl_0_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_0_tri_o[*]}]

## ----------------------------
##  7-SEGMENT DISPLAY (axi_gpio_1)
## ----------------------------
# Segment cathodes (CA-CG, DP)
set_property PACKAGE_PIN T10 [get_ports {gpio_rtl_1_tri_o[0]}]
set_property PACKAGE_PIN R10 [get_ports {gpio_rtl_1_tri_o[1]}]
set_property PACKAGE_PIN K16 [get_ports {gpio_rtl_1_tri_o[2]}]
set_property PACKAGE_PIN K13 [get_ports {gpio_rtl_1_tri_o[3]}]
set_property PACKAGE_PIN P15 [get_ports {gpio_rtl_1_tri_o[4]}]
set_property PACKAGE_PIN T11 [get_ports {gpio_rtl_1_tri_o[5]}]
set_property PACKAGE_PIN L18 [get_ports {gpio_rtl_1_tri_o[6]}]
set_property PACKAGE_PIN H15 [get_ports {gpio_rtl_1_tri_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_1_tri_o[*]}]

# Digit anodes (AN0-AN7)
set_property PACKAGE_PIN J17 [get_ports {gpio_rtl_2_tri_o[0]}]
set_property PACKAGE_PIN J18 [get_ports {gpio_rtl_2_tri_o[1]}]
set_property PACKAGE_PIN T9  [get_ports {gpio_rtl_2_tri_o[2]}]
set_property PACKAGE_PIN J14 [get_ports {gpio_rtl_2_tri_o[3]}]
set_property PACKAGE_PIN P14 [get_ports {gpio_rtl_2_tri_o[4]}]
set_property PACKAGE_PIN T14 [get_ports {gpio_rtl_2_tri_o[5]}]
set_property PACKAGE_PIN K2  [get_ports {gpio_rtl_2_tri_o[6]}]
set_property PACKAGE_PIN U13 [get_ports {gpio_rtl_2_tri_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_rtl_2_tri_o[*]}]

