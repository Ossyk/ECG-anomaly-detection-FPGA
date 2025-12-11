set moduleName ecg_cnn
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 12
set C_modelName {ecg_cnn}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ INPUT_r int 16 regular {axi_master 0}  }
	{ OUTPUT_r int 32 regular {axi_master 1}  }
	{ input_r_r int 64 regular {axi_slave 0}  }
	{ output_r_r int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_r", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "input_r_r","offset": { "type": "dynamic","port_name": "input_r_r","bundle": "CTRL"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "OUTPUT_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "output_r_r","offset": { "type": "dynamic","port_name": "output_r_r","bundle": "CTRL"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_r_r", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "output_r_r", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_INPUT_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_INPUT_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_INPUT_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_INPUT_r_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_INPUT_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_INPUT_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_INPUT_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_INPUT_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_INPUT_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_INPUT_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_INPUT_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_INPUT_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_OUTPUT_r_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_OUTPUT_r_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_OUTPUT_r_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_OUTPUT_r_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_OUTPUT_r_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_OUTPUT_r_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_OUTPUT_r_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_OUTPUT_r_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_OUTPUT_r_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_OUTPUT_r_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_OUTPUT_r_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_OUTPUT_r_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"ecg_cnn","role":"start","value":"0","valid_bit":"0"},{"name":"ecg_cnn","role":"continue","value":"0","valid_bit":"4"},{"name":"ecg_cnn","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r_r","role":"data","value":"16"},{"name":"output_r_r","role":"data","value":"28"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"ecg_cnn","role":"start","value":"0","valid_bit":"0"},{"name":"ecg_cnn","role":"done","value":"0","valid_bit":"1"},{"name":"ecg_cnn","role":"idle","value":"0","valid_bit":"2"},{"name":"ecg_cnn","role":"ready","value":"0","valid_bit":"3"},{"name":"ecg_cnn","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_INPUT_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_INPUT_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_INPUT_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_INPUT_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWID" }} , 
 	{ "name": "m_axi_INPUT_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_INPUT_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_INPUT_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_INPUT_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_INPUT_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_INPUT_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_INPUT_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_INPUT_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_INPUT_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_INPUT_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_INPUT_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_INPUT_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_INPUT_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_INPUT_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_INPUT_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WID" }} , 
 	{ "name": "m_axi_INPUT_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_INPUT_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_INPUT_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_INPUT_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_INPUT_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARID" }} , 
 	{ "name": "m_axi_INPUT_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_INPUT_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_INPUT_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_INPUT_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_INPUT_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_INPUT_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_INPUT_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_INPUT_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_INPUT_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_INPUT_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_INPUT_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_INPUT_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_INPUT_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_INPUT_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RID" }} , 
 	{ "name": "m_axi_INPUT_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_INPUT_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_INPUT_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_INPUT_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_INPUT_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_INPUT_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BID" }} , 
 	{ "name": "m_axi_INPUT_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_r", "role": "BUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWID" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_OUTPUT_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_OUTPUT_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_OUTPUT_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_OUTPUT_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WID" }} , 
 	{ "name": "m_axi_OUTPUT_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARID" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_OUTPUT_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_OUTPUT_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_OUTPUT_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RID" }} , 
 	{ "name": "m_axi_OUTPUT_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_OUTPUT_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_OUTPUT_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_OUTPUT_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_OUTPUT_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_OUTPUT_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BID" }} , 
 	{ "name": "m_axi_OUTPUT_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_r", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	ecg_cnn {
		INPUT_r {Type I LastRead 16 FirstWrite -1}
		OUTPUT_r {Type O LastRead 43 FirstWrite 42}
		input_r_r {Type I LastRead 0 FirstWrite -1}
		output_r_r {Type I LastRead 0 FirstWrite -1}
		w_local_0 {Type I LastRead -1 FirstWrite -1}
		w_local_1 {Type I LastRead -1 FirstWrite -1}
		w_local_2 {Type I LastRead -1 FirstWrite -1}
		w_local_3 {Type I LastRead -1 FirstWrite -1}
		w_local_4 {Type I LastRead -1 FirstWrite -1}
		w_local_5 {Type I LastRead -1 FirstWrite -1}
		w_local_6 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_4 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_4 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_4 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_4 {Type I LastRead -1 FirstWrite -1}
		w_local_82_0 {Type I LastRead -1 FirstWrite -1}
		w_local_82_1 {Type I LastRead -1 FirstWrite -1}
		w_local_82_2 {Type I LastRead -1 FirstWrite -1}
		w_local_82_3 {Type I LastRead -1 FirstWrite -1}
		f_x_lsb_table {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table {Type I LastRead -1 FirstWrite -1}}
	conv1d_relu {
		INPUT_r {Type I LastRead 16 FirstWrite -1}
		input_r_r {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 21}
		output_1 {Type O LastRead -1 FirstWrite 21}
		w_local_0 {Type I LastRead -1 FirstWrite -1}
		w_local_1 {Type I LastRead -1 FirstWrite -1}
		w_local_2 {Type I LastRead -1 FirstWrite -1}
		w_local_3 {Type I LastRead -1 FirstWrite -1}
		w_local_4 {Type I LastRead -1 FirstWrite -1}
		w_local_5 {Type I LastRead -1 FirstWrite -1}
		w_local_6 {Type I LastRead -1 FirstWrite -1}}
	maxpool {
		input_0 {Type I LastRead 13 FirstWrite -1}
		input_1 {Type I LastRead 13 FirstWrite -1}
		output_0_0 {Type O LastRead -1 FirstWrite 14}
		output_0_1 {Type O LastRead -1 FirstWrite 14}
		output_0_2 {Type O LastRead -1 FirstWrite 14}
		output_0_3 {Type O LastRead -1 FirstWrite 14}
		output_0_4 {Type O LastRead -1 FirstWrite 14}
		output_1_0 {Type O LastRead -1 FirstWrite 14}
		output_1_1 {Type O LastRead -1 FirstWrite 14}
		output_1_2 {Type O LastRead -1 FirstWrite 14}
		output_1_3 {Type O LastRead -1 FirstWrite 14}
		output_1_4 {Type O LastRead -1 FirstWrite 14}}
	conv1d_relu2 {
		input_0_0 {Type I LastRead 16 FirstWrite -1}
		input_0_1 {Type I LastRead 16 FirstWrite -1}
		input_0_2 {Type I LastRead 16 FirstWrite -1}
		input_0_3 {Type I LastRead 16 FirstWrite -1}
		input_0_4 {Type I LastRead 16 FirstWrite -1}
		input_1_0 {Type I LastRead 16 FirstWrite -1}
		input_1_1 {Type I LastRead 16 FirstWrite -1}
		input_1_2 {Type I LastRead 16 FirstWrite -1}
		input_1_3 {Type I LastRead 16 FirstWrite -1}
		input_1_4 {Type I LastRead 16 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 58}
		output_1 {Type O LastRead -1 FirstWrite 58}
		output_2 {Type O LastRead -1 FirstWrite 58}
		output_3 {Type O LastRead -1 FirstWrite 58}
		w_local_80_0_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_0_4 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_1_4 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_2_4 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_0 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_1 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_2 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_3 {Type I LastRead -1 FirstWrite -1}
		w_local_80_3_4 {Type I LastRead -1 FirstWrite -1}}
	gap {
		input_0 {Type I LastRead 0 FirstWrite -1}
		input_1 {Type I LastRead 0 FirstWrite -1}
		input_2 {Type I LastRead 0 FirstWrite -1}
		input_3 {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}
		output_14 {Type O LastRead -1 FirstWrite 3}
		output_15 {Type O LastRead -1 FirstWrite 3}}
	gap_Pipeline_VITIS_LOOP_115_1 {
		lshr_ln {Type I LastRead 0 FirstWrite -1}
		input_0 {Type I LastRead 0 FirstWrite -1}
		input_1 {Type I LastRead 0 FirstWrite -1}
		input_2 {Type I LastRead 0 FirstWrite -1}
		input_3 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 1}}
	dense_relu {
		input_0_val {Type I LastRead 0 FirstWrite -1}
		input_1_val {Type I LastRead 0 FirstWrite -1}
		input_2_val {Type I LastRead 0 FirstWrite -1}
		input_3_val {Type I LastRead 0 FirstWrite -1}
		input_4_val {Type I LastRead 0 FirstWrite -1}
		input_5_val {Type I LastRead 0 FirstWrite -1}
		input_6_val {Type I LastRead 0 FirstWrite -1}
		input_7_val {Type I LastRead 0 FirstWrite -1}
		input_8_val {Type I LastRead 0 FirstWrite -1}
		input_9_val {Type I LastRead 0 FirstWrite -1}
		input_10_val {Type I LastRead 0 FirstWrite -1}
		input_11_val {Type I LastRead 0 FirstWrite -1}
		input_12_val {Type I LastRead 0 FirstWrite -1}
		input_13_val {Type I LastRead 0 FirstWrite -1}
		input_14_val {Type I LastRead 0 FirstWrite -1}
		input_15_val {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}
		output_14 {Type O LastRead -1 FirstWrite 3}
		output_15 {Type O LastRead -1 FirstWrite 3}
		w_local_82_0 {Type I LastRead -1 FirstWrite -1}
		w_local_82_1 {Type I LastRead -1 FirstWrite -1}
		w_local_82_2 {Type I LastRead -1 FirstWrite -1}
		w_local_82_3 {Type I LastRead -1 FirstWrite -1}}
	dense_relu_Pipeline_VITIS_LOOP_146_2 {
		sext_ln145 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		input_0_val {Type I LastRead 0 FirstWrite -1}
		input_1_val {Type I LastRead 0 FirstWrite -1}
		input_2_val {Type I LastRead 0 FirstWrite -1}
		input_3_val {Type I LastRead 0 FirstWrite -1}
		input_4_val {Type I LastRead 0 FirstWrite -1}
		input_5_val {Type I LastRead 0 FirstWrite -1}
		input_6_val {Type I LastRead 0 FirstWrite -1}
		input_7_val {Type I LastRead 0 FirstWrite -1}
		input_8_val {Type I LastRead 0 FirstWrite -1}
		input_9_val {Type I LastRead 0 FirstWrite -1}
		input_10_val {Type I LastRead 0 FirstWrite -1}
		input_11_val {Type I LastRead 0 FirstWrite -1}
		input_12_val {Type I LastRead 0 FirstWrite -1}
		input_13_val {Type I LastRead 0 FirstWrite -1}
		input_14_val {Type I LastRead 0 FirstWrite -1}
		input_15_val {Type I LastRead 0 FirstWrite -1}
		phi_ln148_out {Type O LastRead -1 FirstWrite 2}
		w_local_82_0 {Type I LastRead -1 FirstWrite -1}
		w_local_82_1 {Type I LastRead -1 FirstWrite -1}
		w_local_82_2 {Type I LastRead -1 FirstWrite -1}
		w_local_82_3 {Type I LastRead -1 FirstWrite -1}}
	dense_linear {
		input_0_val {Type I LastRead 0 FirstWrite -1}
		input_1_val {Type I LastRead 0 FirstWrite -1}
		input_2_val {Type I LastRead 0 FirstWrite -1}
		input_3_val {Type I LastRead 0 FirstWrite -1}
		input_4_val {Type I LastRead 0 FirstWrite -1}
		input_5_val {Type I LastRead 0 FirstWrite -1}
		input_6_val {Type I LastRead 0 FirstWrite -1}
		input_7_val {Type I LastRead 0 FirstWrite -1}
		input_8_val {Type I LastRead 0 FirstWrite -1}
		input_9_val {Type I LastRead 0 FirstWrite -1}
		input_10_val {Type I LastRead 0 FirstWrite -1}
		input_11_val {Type I LastRead 0 FirstWrite -1}
		input_12_val {Type I LastRead 0 FirstWrite -1}
		input_13_val {Type I LastRead 0 FirstWrite -1}
		input_14_val {Type I LastRead 0 FirstWrite -1}
		input_15_val {Type I LastRead 0 FirstWrite -1}}
	exp_12_3_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "60677", "Max" : "60677"}
	, {"Name" : "Interval", "Min" : "60678", "Max" : "60678"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	INPUT_r { m_axi {  { m_axi_INPUT_r_AWVALID VALID 1 1 }  { m_axi_INPUT_r_AWREADY READY 0 1 }  { m_axi_INPUT_r_AWADDR ADDR 1 64 }  { m_axi_INPUT_r_AWID ID 1 1 }  { m_axi_INPUT_r_AWLEN SIZE 1 8 }  { m_axi_INPUT_r_AWSIZE BURST 1 3 }  { m_axi_INPUT_r_AWBURST LOCK 1 2 }  { m_axi_INPUT_r_AWLOCK CACHE 1 2 }  { m_axi_INPUT_r_AWCACHE PROT 1 4 }  { m_axi_INPUT_r_AWPROT QOS 1 3 }  { m_axi_INPUT_r_AWQOS REGION 1 4 }  { m_axi_INPUT_r_AWREGION USER 1 4 }  { m_axi_INPUT_r_AWUSER DATA 1 1 }  { m_axi_INPUT_r_WVALID VALID 1 1 }  { m_axi_INPUT_r_WREADY READY 0 1 }  { m_axi_INPUT_r_WDATA FIFONUM 1 32 }  { m_axi_INPUT_r_WSTRB STRB 1 4 }  { m_axi_INPUT_r_WLAST LAST 1 1 }  { m_axi_INPUT_r_WID ID 1 1 }  { m_axi_INPUT_r_WUSER DATA 1 1 }  { m_axi_INPUT_r_ARVALID VALID 1 1 }  { m_axi_INPUT_r_ARREADY READY 0 1 }  { m_axi_INPUT_r_ARADDR ADDR 1 64 }  { m_axi_INPUT_r_ARID ID 1 1 }  { m_axi_INPUT_r_ARLEN SIZE 1 8 }  { m_axi_INPUT_r_ARSIZE BURST 1 3 }  { m_axi_INPUT_r_ARBURST LOCK 1 2 }  { m_axi_INPUT_r_ARLOCK CACHE 1 2 }  { m_axi_INPUT_r_ARCACHE PROT 1 4 }  { m_axi_INPUT_r_ARPROT QOS 1 3 }  { m_axi_INPUT_r_ARQOS REGION 1 4 }  { m_axi_INPUT_r_ARREGION USER 1 4 }  { m_axi_INPUT_r_ARUSER DATA 1 1 }  { m_axi_INPUT_r_RVALID VALID 0 1 }  { m_axi_INPUT_r_RREADY READY 1 1 }  { m_axi_INPUT_r_RDATA FIFONUM 0 32 }  { m_axi_INPUT_r_RLAST LAST 0 1 }  { m_axi_INPUT_r_RID ID 0 1 }  { m_axi_INPUT_r_RUSER DATA 0 1 }  { m_axi_INPUT_r_RRESP RESP 0 2 }  { m_axi_INPUT_r_BVALID VALID 0 1 }  { m_axi_INPUT_r_BREADY READY 1 1 }  { m_axi_INPUT_r_BRESP RESP 0 2 }  { m_axi_INPUT_r_BID ID 0 1 }  { m_axi_INPUT_r_BUSER DATA 0 1 } } }
	OUTPUT_r { m_axi {  { m_axi_OUTPUT_r_AWVALID VALID 1 1 }  { m_axi_OUTPUT_r_AWREADY READY 0 1 }  { m_axi_OUTPUT_r_AWADDR ADDR 1 64 }  { m_axi_OUTPUT_r_AWID ID 1 1 }  { m_axi_OUTPUT_r_AWLEN SIZE 1 8 }  { m_axi_OUTPUT_r_AWSIZE BURST 1 3 }  { m_axi_OUTPUT_r_AWBURST LOCK 1 2 }  { m_axi_OUTPUT_r_AWLOCK CACHE 1 2 }  { m_axi_OUTPUT_r_AWCACHE PROT 1 4 }  { m_axi_OUTPUT_r_AWPROT QOS 1 3 }  { m_axi_OUTPUT_r_AWQOS REGION 1 4 }  { m_axi_OUTPUT_r_AWREGION USER 1 4 }  { m_axi_OUTPUT_r_AWUSER DATA 1 1 }  { m_axi_OUTPUT_r_WVALID VALID 1 1 }  { m_axi_OUTPUT_r_WREADY READY 0 1 }  { m_axi_OUTPUT_r_WDATA FIFONUM 1 32 }  { m_axi_OUTPUT_r_WSTRB STRB 1 4 }  { m_axi_OUTPUT_r_WLAST LAST 1 1 }  { m_axi_OUTPUT_r_WID ID 1 1 }  { m_axi_OUTPUT_r_WUSER DATA 1 1 }  { m_axi_OUTPUT_r_ARVALID VALID 1 1 }  { m_axi_OUTPUT_r_ARREADY READY 0 1 }  { m_axi_OUTPUT_r_ARADDR ADDR 1 64 }  { m_axi_OUTPUT_r_ARID ID 1 1 }  { m_axi_OUTPUT_r_ARLEN SIZE 1 8 }  { m_axi_OUTPUT_r_ARSIZE BURST 1 3 }  { m_axi_OUTPUT_r_ARBURST LOCK 1 2 }  { m_axi_OUTPUT_r_ARLOCK CACHE 1 2 }  { m_axi_OUTPUT_r_ARCACHE PROT 1 4 }  { m_axi_OUTPUT_r_ARPROT QOS 1 3 }  { m_axi_OUTPUT_r_ARQOS REGION 1 4 }  { m_axi_OUTPUT_r_ARREGION USER 1 4 }  { m_axi_OUTPUT_r_ARUSER DATA 1 1 }  { m_axi_OUTPUT_r_RVALID VALID 0 1 }  { m_axi_OUTPUT_r_RREADY READY 1 1 }  { m_axi_OUTPUT_r_RDATA FIFONUM 0 32 }  { m_axi_OUTPUT_r_RLAST LAST 0 1 }  { m_axi_OUTPUT_r_RID ID 0 1 }  { m_axi_OUTPUT_r_RUSER DATA 0 1 }  { m_axi_OUTPUT_r_RRESP RESP 0 2 }  { m_axi_OUTPUT_r_BVALID VALID 0 1 }  { m_axi_OUTPUT_r_BREADY READY 1 1 }  { m_axi_OUTPUT_r_BRESP RESP 0 2 }  { m_axi_OUTPUT_r_BID ID 0 1 }  { m_axi_OUTPUT_r_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict INPUT_r { CHANNEL_NUM 0 BUNDLE INPUT_r NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict OUTPUT_r { CHANNEL_NUM 0 BUNDLE OUTPUT_r NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ INPUT_r 1 }
	{ OUTPUT_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ INPUT_r 1 }
	{ OUTPUT_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
