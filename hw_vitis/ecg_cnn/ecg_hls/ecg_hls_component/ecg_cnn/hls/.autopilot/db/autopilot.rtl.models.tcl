set SynModuleInfo {
  {SRCNAME conv1d_relu MODELNAME conv1d_relu RTLNAME ecg_cnn_conv1d_relu
    SUBMODULES {
      {MODELNAME ecg_cnn_sparsemux_17_3_9_1_1 RTLNAME ecg_cnn_sparsemux_17_3_9_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME ecg_cnn_mac_muladd_12s_11s_18s_21_4_1 RTLNAME ecg_cnn_mac_muladd_12s_11s_18s_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_mac_muladd_12s_10s_21ns_21_4_1 RTLNAME ecg_cnn_mac_muladd_12s_10s_21ns_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_mac_muladd_12s_9s_21ns_21_4_1 RTLNAME ecg_cnn_mac_muladd_12s_9s_21ns_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_mac_muladd_12s_11s_21ns_21_4_1 RTLNAME ecg_cnn_mac_muladd_12s_11s_21ns_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_conv1d_relu_w_local_0_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu_w_local_0_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu_w_local_1_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu_w_local_1_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu_w_local_2_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu_w_local_2_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu_w_local_3_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu_w_local_3_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu_w_local_4_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu_w_local_4_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu_w_local_5_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu_w_local_5_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu_w_local_6_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu_w_local_6_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_flow_control_loop_pipe_sequential_init RTLNAME ecg_cnn_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ecg_cnn_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME maxpool MODELNAME maxpool RTLNAME ecg_cnn_maxpool
    SUBMODULES {
      {MODELNAME ecg_cnn_urem_9ns_4ns_3_13_1 RTLNAME ecg_cnn_urem_9ns_4ns_3_13_1 BINDTYPE op TYPE urem IMPL auto LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_mul_9ns_11ns_19_1_1 RTLNAME ecg_cnn_mul_9ns_11ns_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv1d_relu2 MODELNAME conv1d_relu2 RTLNAME ecg_cnn_conv1d_relu2
    SUBMODULES {
      {MODELNAME ecg_cnn_sparsemux_11_3_11_1_1 RTLNAME ecg_cnn_sparsemux_11_3_11_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME ecg_cnn_sparsemux_33_4_10_1_1 RTLNAME ecg_cnn_sparsemux_33_4_10_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME ecg_cnn_mac_muladd_12s_11ns_19s_21_4_1 RTLNAME ecg_cnn_mac_muladd_12s_11ns_19s_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_mac_muladd_11ns_11s_21ns_21_4_1 RTLNAME ecg_cnn_mac_muladd_11ns_11s_21ns_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_mac_muladd_11ns_10s_21ns_21_4_1 RTLNAME ecg_cnn_mac_muladd_11ns_10s_21ns_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_mac_muladd_12s_11ns_21ns_21_4_1 RTLNAME ecg_cnn_mac_muladd_12s_11ns_21ns_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_0_0_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_0_0_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_0_1_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_0_1_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_0_2_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_0_2_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_0_3_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_0_3_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_0_4_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_0_4_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_1_0_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_1_0_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_1_1_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_1_1_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_1_2_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_1_2_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_1_3_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_1_3_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_1_4_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_1_4_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_2_0_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_2_0_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_2_1_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_2_1_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_2_2_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_2_2_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_2_3_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_2_3_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_2_4_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_2_4_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_3_0_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_3_0_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_3_1_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_3_1_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_3_2_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_3_2_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_3_3_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_3_3_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1d_relu2_w_local_80_3_4_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1d_relu2_w_local_80_3_4_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gap_Pipeline_VITIS_LOOP_115_1 MODELNAME gap_Pipeline_VITIS_LOOP_115_1 RTLNAME ecg_cnn_gap_Pipeline_VITIS_LOOP_115_1
    SUBMODULES {
      {MODELNAME ecg_cnn_sparsemux_9_2_11_1_1 RTLNAME ecg_cnn_sparsemux_9_2_11_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gap MODELNAME gap RTLNAME ecg_cnn_gap}
  {SRCNAME dense_relu_Pipeline_VITIS_LOOP_146_2 MODELNAME dense_relu_Pipeline_VITIS_LOOP_146_2 RTLNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2
    SUBMODULES {
      {MODELNAME ecg_cnn_sparsemux_33_4_12_1_1 RTLNAME ecg_cnn_sparsemux_33_4_12_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME ecg_cnn_sparsemux_9_2_12_1_1 RTLNAME ecg_cnn_sparsemux_9_2_12_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME ecg_cnn_mac_muladd_12s_12s_21ns_21_4_1 RTLNAME ecg_cnn_mac_muladd_12s_12s_21ns_21_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_0_ROM_AUTO_1R RTLNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_1_ROM_AUTO_1R RTLNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_2_ROM_AUTO_1R RTLNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_3_ROM_AUTO_1R RTLNAME ecg_cnn_dense_relu_Pipeline_VITIS_LOOP_146_2_w_local_82_3_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_relu MODELNAME dense_relu RTLNAME ecg_cnn_dense_relu
    SUBMODULES {
      {MODELNAME ecg_cnn_sparsemux_33_4_8_1_1 RTLNAME ecg_cnn_sparsemux_33_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME dense_linear MODELNAME dense_linear RTLNAME ecg_cnn_dense_linear
    SUBMODULES {
      {MODELNAME ecg_cnn_sparsemux_33_4_11_1_1 RTLNAME ecg_cnn_sparsemux_33_4_11_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME ecg_cnn_sparsemux_33_4_12_1_1_x RTLNAME ecg_cnn_sparsemux_33_4_12_1_1_x BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME {exp<12, 3>} MODELNAME exp_12_3_s RTLNAME ecg_cnn_exp_12_3_s
    SUBMODULES {
      {MODELNAME ecg_cnn_mul_25ns_25ns_50_1_0 RTLNAME ecg_cnn_mul_25ns_25ns_50_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_mul_25ns_18ns_43_1_0 RTLNAME ecg_cnn_mul_25ns_18ns_43_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_exp_12_3_s_f_x_lsb_table_ROM_AUTO_1R RTLNAME ecg_cnn_exp_12_3_s_f_x_lsb_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_exp_12_3_s_exp_x_msb_2_m_1_table_ROM_AUTO_1R RTLNAME ecg_cnn_exp_12_3_s_exp_x_msb_2_m_1_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_exp_12_3_s_exp_x_msb_1_table_ROM_AUTO_1R RTLNAME ecg_cnn_exp_12_3_s_exp_x_msb_1_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_cnn MODELNAME ecg_cnn RTLNAME ecg_cnn IS_TOP 1
    SUBMODULES {
      {MODELNAME ecg_cnn_sdiv_20ns_13s_20_24_seq_1 RTLNAME ecg_cnn_sdiv_20ns_13s_20_24_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 23 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv1_out_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv1_out_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_pool1_out_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_pool1_out_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_conv2_out_RAM_T2P_BRAM_1R1W RTLNAME ecg_cnn_conv2_out_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_cnn_INPUT_r_m_axi RTLNAME ecg_cnn_INPUT_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ecg_cnn_OUTPUT_r_m_axi RTLNAME ecg_cnn_OUTPUT_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME ecg_cnn_CTRL_s_axi RTLNAME ecg_cnn_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
