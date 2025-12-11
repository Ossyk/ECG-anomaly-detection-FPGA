vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_15
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_15
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vlib questa_lib/msim/blk_mem_gen_v8_4_11
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_28
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/axi_uartlite_v2_0_39
vlib questa_lib/msim/axi_bram_ctrl_v4_1_13
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/xlconstant_v1_1_10
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35
vlib questa_lib/msim/axi_vip_v1_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_15 questa_lib/msim/microblaze_v11_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_15 questa_lib/msim/lmb_v10_v3_0_15
vmap lmb_bram_if_cntlr_v4_0_26 questa_lib/msim/lmb_bram_if_cntlr_v4_0_26
vmap blk_mem_gen_v8_4_11 questa_lib/msim/blk_mem_gen_v8_4_11
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_28 questa_lib/msim/mdm_v3_2_28
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap axi_uartlite_v2_0_39 questa_lib/msim/axi_uartlite_v2_0_39
vmap axi_bram_ctrl_v4_1_13 questa_lib/msim/axi_bram_ctrl_v4_1_13
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35
vmap axi_vip_v1_1_21 questa_lib/msim/axi_vip_v1_1_21

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_15  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_microblaze_0_0/sim/system_bd_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_15  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_dlmb_v10_0_1/sim/system_bd_dlmb_v10_0.vhd" \
"../../../bd/system_bd/ip/system_bd_ilmb_v10_0_1/sim/system_bd_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_dlmb_bram_if_cntlr_0_1/sim/system_bd_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/system_bd/ip/system_bd_ilmb_bram_if_cntlr_0_1/sim/system_bd_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_lmb_bram_0_1/sim/system_bd_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_28  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/00dd/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_mdm_1_0_1/sim/system_bd_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_clk_wiz_1_0_1/system_bd_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/system_bd/ip/system_bd_clk_wiz_1_0_1/system_bd_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_rst_clk_wiz_1_100M_0_1/sim/system_bd_rst_clk_wiz_1_100M_0.vhd" \

vcom -work axi_uartlite_v2_0_39  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_axi_uartlite_0_0_1/sim/system_bd_axi_uartlite_0_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_13  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/2f03/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_axi_bram_ctrl_0_1/sim/system_bd_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_blk_mem_gen_0_1/sim/system_bd_blk_mem_gen_0_1.v" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_axi_gpio_0_0/sim/system_bd_axi_gpio_0_0.vhd" \
"../../../bd/system_bd/ip/system_bd_axi_gpio_1_0/sim/system_bd_axi_gpio_1_0.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1_out_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_0_0_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_0_1_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_0_2_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_0_3_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_0_4_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_1_0_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_1_1_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_1_2_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_1_3_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_1_4_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_2_0_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_2_1_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_2_2_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_2_3_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_2_4_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_3_0_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_3_1_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_3_2_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_3_3_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu2_w_local_80_3_4_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu_w_local_0_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu_w_local_1_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu_w_local_2_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu_w_local_3_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu_w_local_4_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu_w_local_5_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv1d_relu_w_local_6_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_conv2_out_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_CTRL_s_axi.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_dense_linear.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_dense_relu.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_0_ROM_AUTO_1R.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_1_ROM_AUTO_1R.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_2_ROM_AUTO_1R.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_3_ROM_AUTO_1R.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_exp_12_3_s.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_exp_12_3_s_exp_x_msb_1_table_ROM_AUTO_1R.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_exp_12_3_s_exp_x_msb_2_m_1_table_ROM_AUTO_1R.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_exp_12_3_s_f_x_lsb_table_ROM_AUTO_1R.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_flow_control_loop_pipe_sequential_init.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_gap.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_gap_Pipeline_VITIS_LOOP_115_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_INPUT_r_m_axi.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_11ns_10s_21ns_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_11ns_11s_21ns_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_12s_9s_21ns_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_12s_10s_21ns_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_12s_11ns_19s_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_12s_11ns_21ns_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_12s_11s_18s_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_12s_11s_21ns_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mac_muladd_12s_12s_21ns_21_4_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_maxpool.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mul_9ns_11ns_19_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mul_25ns_18ns_43_1_0.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_mul_25ns_25ns_50_1_0.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_OUTPUT_r_m_axi.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_pool1_out_RAM_T2P_BRAM_1R1W.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sdiv_20ns_13s_20_24_seq_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_9_2_11_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_9_2_12_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_11_3_11_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_17_3_9_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_33_4_8_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_33_4_10_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_33_4_11_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_33_4_12_1_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_sparsemux_33_4_12_1_1_x.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn_urem_9ns_4ns_3_13_1.vhd" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3434/hdl/vhdl/ecg_cnn.vhd" \
"../../../bd/system_bd/ip/system_bd_ecg_cnn_0_1/sim/system_bd_ecg_cnn_0_1.vhd" \

vlog -work xlconstant_v1_1_10  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_e6ac_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_e6ac_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_e6ac_arsw_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_e6ac_rsw_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_e6ac_awsw_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_e6ac_wsw_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_e6ac_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_e6ac_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_e6ac_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_e6ac_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_e6ac_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_e6ac_sarn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_e6ac_srn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_e6ac_sawn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_e6ac_swn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_e6ac_sbn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_e6ac_s01mmu_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_e6ac_s01tr_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_e6ac_s01sic_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_e6ac_s01a2s_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_e6ac_sarn_1.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_e6ac_srn_1.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_e6ac_s02mmu_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_e6ac_s02tr_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_e6ac_s02sic_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_e6ac_s02a2s_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_e6ac_sawn_1.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_e6ac_swn_1.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_e6ac_sbn_1.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_e6ac_s03mmu_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_e6ac_s03tr_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_e6ac_s03sic_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_e6ac_s03a2s_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_e6ac_sarn_2.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_e6ac_srn_2.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_e6ac_sawn_2.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_e6ac_swn_2.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_e6ac_sbn_2.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_e6ac_s04mmu_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_e6ac_s04tr_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_e6ac_s04sic_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_e6ac_s04a2s_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_e6ac_sarn_3.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_e6ac_srn_3.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_e6ac_m00s2a_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_e6ac_m00arn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_e6ac_m00rn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_e6ac_m00awn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_e6ac_m00wn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_e6ac_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_e6ac_m00e_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_e6ac_m01s2a_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_e6ac_m01arn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_e6ac_m01rn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_54/sim/bd_e6ac_m01awn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_55/sim/bd_e6ac_m01wn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_56/sim/bd_e6ac_m01bn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_57/sim/bd_e6ac_m01e_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_58/sim/bd_e6ac_m02s2a_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_59/sim/bd_e6ac_m02arn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_60/sim/bd_e6ac_m02rn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_61/sim/bd_e6ac_m02awn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_62/sim/bd_e6ac_m02wn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_63/sim/bd_e6ac_m02bn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_64/sim/bd_e6ac_m02e_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_65/sim/bd_e6ac_m03s2a_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_66/sim/bd_e6ac_m03arn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_67/sim/bd_e6ac_m03rn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_68/sim/bd_e6ac_m03awn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_69/sim/bd_e6ac_m03wn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_70/sim/bd_e6ac_m03bn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_71/sim/bd_e6ac_m03e_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_72/sim/bd_e6ac_m04s2a_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_73/sim/bd_e6ac_m04arn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_74/sim/bd_e6ac_m04rn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_75/sim/bd_e6ac_m04awn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_76/sim/bd_e6ac_m04wn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_77/sim/bd_e6ac_m04bn_0.sv" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/ip/ip_78/sim/bd_e6ac_m04e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/bd_0/sim/bd_e6ac.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_smartconnect_0_0/sim/system_bd_smartconnect_0_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a9be" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/a8e4/hdl/verilog" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ecg_cnn_bd.gen/sources_1/bd/system_bd/ip/system_bd_ecg_cnn_0_1/drivers/ecg_cnn_v1_0/src" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system_bd/ip/system_bd_xlconstant_0_2/sim/system_bd_xlconstant_0_2.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system_bd/sim/system_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

