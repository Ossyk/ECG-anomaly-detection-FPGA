transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+system_bd  -L xil_defaultlib -L xilinx_vip -L xpm -L microblaze_v11_0_15 -L lmb_v10_v3_0_15 -L lmb_bram_if_cntlr_v4_0_26 -L blk_mem_gen_v8_4_11 -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_28 -L proc_sys_reset_v5_0_17 -L axi_uartlite_v2_0_39 -L axi_bram_ctrl_v4_1_13 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_37 -L xlconstant_v1_1_10 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_35 -L axi_vip_v1_1_21 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system_bd xil_defaultlib.glbl

do {system_bd.udo}

run 1000ns

endsim

quit -force
