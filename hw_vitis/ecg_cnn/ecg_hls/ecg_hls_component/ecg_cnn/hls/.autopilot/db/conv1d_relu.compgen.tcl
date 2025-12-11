# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_sparsemux_17_3_9_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_mac_muladd_12s_11s_18s_21_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_mac_muladd_12s_10s_21ns_21_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_mac_muladd_12s_9s_21ns_21_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_mac_muladd_12s_11s_21ns_21_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_conv1d_relu_w_local_0_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_conv1d_relu_w_local_1_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_conv1d_relu_w_local_2_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_conv1d_relu_w_local_3_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_conv1d_relu_w_local_4_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_conv1d_relu_w_local_5_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_cnn_conv1d_relu_w_local_6_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name output_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_0 \
    op interface \
    ports { output_0_address0 { O 12 vector } output_0_ce0 { O 1 bit } output_0_we0 { O 1 bit } output_0_d0 { O 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name output_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_1 \
    op interface \
    ports { output_1_address0 { O 12 vector } output_1_ce0 { O 1 bit } output_1_we0 { O 1 bit } output_1_d0 { O 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name INPUT_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_INPUT_r \
    op interface \
    ports { m_axi_INPUT_r_0_AWVALID { O 1 bit } m_axi_INPUT_r_0_AWREADY { I 1 bit } m_axi_INPUT_r_0_AWADDR { O 64 vector } m_axi_INPUT_r_0_AWID { O 1 vector } m_axi_INPUT_r_0_AWLEN { O 32 vector } m_axi_INPUT_r_0_AWSIZE { O 3 vector } m_axi_INPUT_r_0_AWBURST { O 2 vector } m_axi_INPUT_r_0_AWLOCK { O 2 vector } m_axi_INPUT_r_0_AWCACHE { O 4 vector } m_axi_INPUT_r_0_AWPROT { O 3 vector } m_axi_INPUT_r_0_AWQOS { O 4 vector } m_axi_INPUT_r_0_AWREGION { O 4 vector } m_axi_INPUT_r_0_AWUSER { O 1 vector } m_axi_INPUT_r_0_WVALID { O 1 bit } m_axi_INPUT_r_0_WREADY { I 1 bit } m_axi_INPUT_r_0_WDATA { O 16 vector } m_axi_INPUT_r_0_WSTRB { O 2 vector } m_axi_INPUT_r_0_WLAST { O 1 bit } m_axi_INPUT_r_0_WID { O 1 vector } m_axi_INPUT_r_0_WUSER { O 1 vector } m_axi_INPUT_r_0_ARVALID { O 1 bit } m_axi_INPUT_r_0_ARREADY { I 1 bit } m_axi_INPUT_r_0_ARADDR { O 64 vector } m_axi_INPUT_r_0_ARID { O 1 vector } m_axi_INPUT_r_0_ARLEN { O 32 vector } m_axi_INPUT_r_0_ARSIZE { O 3 vector } m_axi_INPUT_r_0_ARBURST { O 2 vector } m_axi_INPUT_r_0_ARLOCK { O 2 vector } m_axi_INPUT_r_0_ARCACHE { O 4 vector } m_axi_INPUT_r_0_ARPROT { O 3 vector } m_axi_INPUT_r_0_ARQOS { O 4 vector } m_axi_INPUT_r_0_ARREGION { O 4 vector } m_axi_INPUT_r_0_ARUSER { O 1 vector } m_axi_INPUT_r_0_RVALID { I 1 bit } m_axi_INPUT_r_0_RREADY { O 1 bit } m_axi_INPUT_r_0_RDATA { I 16 vector } m_axi_INPUT_r_0_RLAST { I 1 bit } m_axi_INPUT_r_0_RID { I 1 vector } m_axi_INPUT_r_0_RFIFONUM { I 10 vector } m_axi_INPUT_r_0_RUSER { I 1 vector } m_axi_INPUT_r_0_RRESP { I 2 vector } m_axi_INPUT_r_0_BVALID { I 1 bit } m_axi_INPUT_r_0_BREADY { O 1 bit } m_axi_INPUT_r_0_BRESP { I 2 vector } m_axi_INPUT_r_0_BID { I 1 vector } m_axi_INPUT_r_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name input_r_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_r_r \
    op interface \
    ports { input_r_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName ecg_cnn_flow_control_loop_pipe_sequential_init_U
set CompName ecg_cnn_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix ecg_cnn_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


