set moduleName dense_relu
set isTopModule 0
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
set C_modelName {dense_relu}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_0_val int 12 regular  }
	{ input_1_val int 12 regular  }
	{ input_2_val int 12 regular  }
	{ input_3_val int 12 regular  }
	{ input_4_val int 12 regular  }
	{ input_5_val int 12 regular  }
	{ input_6_val int 12 regular  }
	{ input_7_val int 12 regular  }
	{ input_8_val int 12 regular  }
	{ input_9_val int 12 regular  }
	{ input_10_val int 12 regular  }
	{ input_11_val int 12 regular  }
	{ input_12_val int 12 regular  }
	{ input_13_val int 12 regular  }
	{ input_14_val int 12 regular  }
	{ input_15_val int 12 regular  }
	{ output_0 int 11 regular {pointer 1}  }
	{ output_1 int 11 regular {pointer 1}  }
	{ output_2 int 11 regular {pointer 1}  }
	{ output_3 int 11 regular {pointer 1}  }
	{ output_4 int 11 regular {pointer 1}  }
	{ output_5 int 11 regular {pointer 1}  }
	{ output_6 int 11 regular {pointer 1}  }
	{ output_7 int 11 regular {pointer 1}  }
	{ output_8 int 11 regular {pointer 1}  }
	{ output_9 int 11 regular {pointer 1}  }
	{ output_10 int 11 regular {pointer 1}  }
	{ output_11 int 11 regular {pointer 1}  }
	{ output_12 int 11 regular {pointer 1}  }
	{ output_13 int 11 regular {pointer 1}  }
	{ output_14 int 11 regular {pointer 1}  }
	{ output_15 int 11 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_2_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_5_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_6_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_7_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_8_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_9_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_10_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_11_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_12_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_13_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_14_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_15_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_9", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_10", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_11", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_12", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_13", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_14", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_15", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_val sc_in sc_lv 12 signal 0 } 
	{ input_1_val sc_in sc_lv 12 signal 1 } 
	{ input_2_val sc_in sc_lv 12 signal 2 } 
	{ input_3_val sc_in sc_lv 12 signal 3 } 
	{ input_4_val sc_in sc_lv 12 signal 4 } 
	{ input_5_val sc_in sc_lv 12 signal 5 } 
	{ input_6_val sc_in sc_lv 12 signal 6 } 
	{ input_7_val sc_in sc_lv 12 signal 7 } 
	{ input_8_val sc_in sc_lv 12 signal 8 } 
	{ input_9_val sc_in sc_lv 12 signal 9 } 
	{ input_10_val sc_in sc_lv 12 signal 10 } 
	{ input_11_val sc_in sc_lv 12 signal 11 } 
	{ input_12_val sc_in sc_lv 12 signal 12 } 
	{ input_13_val sc_in sc_lv 12 signal 13 } 
	{ input_14_val sc_in sc_lv 12 signal 14 } 
	{ input_15_val sc_in sc_lv 12 signal 15 } 
	{ output_0 sc_out sc_lv 11 signal 16 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ output_1 sc_out sc_lv 11 signal 17 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ output_2 sc_out sc_lv 11 signal 18 } 
	{ output_2_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ output_3 sc_out sc_lv 11 signal 19 } 
	{ output_3_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ output_4 sc_out sc_lv 11 signal 20 } 
	{ output_4_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ output_5 sc_out sc_lv 11 signal 21 } 
	{ output_5_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ output_6 sc_out sc_lv 11 signal 22 } 
	{ output_6_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ output_7 sc_out sc_lv 11 signal 23 } 
	{ output_7_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ output_8 sc_out sc_lv 11 signal 24 } 
	{ output_8_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ output_9 sc_out sc_lv 11 signal 25 } 
	{ output_9_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ output_10 sc_out sc_lv 11 signal 26 } 
	{ output_10_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ output_11 sc_out sc_lv 11 signal 27 } 
	{ output_11_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ output_12 sc_out sc_lv 11 signal 28 } 
	{ output_12_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ output_13 sc_out sc_lv 11 signal 29 } 
	{ output_13_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ output_14 sc_out sc_lv 11 signal 30 } 
	{ output_14_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ output_15 sc_out sc_lv 11 signal 31 } 
	{ output_15_ap_vld sc_out sc_logic 1 outvld 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_0_val", "role": "default" }} , 
 	{ "name": "input_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_1_val", "role": "default" }} , 
 	{ "name": "input_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_2_val", "role": "default" }} , 
 	{ "name": "input_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_3_val", "role": "default" }} , 
 	{ "name": "input_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_4_val", "role": "default" }} , 
 	{ "name": "input_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_5_val", "role": "default" }} , 
 	{ "name": "input_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_6_val", "role": "default" }} , 
 	{ "name": "input_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_7_val", "role": "default" }} , 
 	{ "name": "input_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_8_val", "role": "default" }} , 
 	{ "name": "input_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_9_val", "role": "default" }} , 
 	{ "name": "input_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_10_val", "role": "default" }} , 
 	{ "name": "input_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_11_val", "role": "default" }} , 
 	{ "name": "input_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_12_val", "role": "default" }} , 
 	{ "name": "input_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_13_val", "role": "default" }} , 
 	{ "name": "input_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_14_val", "role": "default" }} , 
 	{ "name": "input_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_15_val", "role": "default" }} , 
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "output_2", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_2", "role": "default" }} , 
 	{ "name": "output_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2", "role": "ap_vld" }} , 
 	{ "name": "output_3", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_3", "role": "default" }} , 
 	{ "name": "output_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3", "role": "ap_vld" }} , 
 	{ "name": "output_4", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_4", "role": "default" }} , 
 	{ "name": "output_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_4", "role": "ap_vld" }} , 
 	{ "name": "output_5", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_5", "role": "default" }} , 
 	{ "name": "output_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_5", "role": "ap_vld" }} , 
 	{ "name": "output_6", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_6", "role": "default" }} , 
 	{ "name": "output_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_6", "role": "ap_vld" }} , 
 	{ "name": "output_7", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_7", "role": "default" }} , 
 	{ "name": "output_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_7", "role": "ap_vld" }} , 
 	{ "name": "output_8", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_8", "role": "default" }} , 
 	{ "name": "output_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_8", "role": "ap_vld" }} , 
 	{ "name": "output_9", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_9", "role": "default" }} , 
 	{ "name": "output_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_9", "role": "ap_vld" }} , 
 	{ "name": "output_10", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_10", "role": "default" }} , 
 	{ "name": "output_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_10", "role": "ap_vld" }} , 
 	{ "name": "output_11", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_11", "role": "default" }} , 
 	{ "name": "output_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_11", "role": "ap_vld" }} , 
 	{ "name": "output_12", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_12", "role": "default" }} , 
 	{ "name": "output_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_12", "role": "ap_vld" }} , 
 	{ "name": "output_13", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_13", "role": "default" }} , 
 	{ "name": "output_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_13", "role": "ap_vld" }} , 
 	{ "name": "output_14", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_14", "role": "default" }} , 
 	{ "name": "output_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_14", "role": "ap_vld" }} , 
 	{ "name": "output_15", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_15", "role": "default" }} , 
 	{ "name": "output_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_15", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		w_local_82_3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "625", "Max" : "625"}
	, {"Name" : "Interval", "Min" : "625", "Max" : "625"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0_val { ap_none {  { input_0_val in_data 0 12 } } }
	input_1_val { ap_none {  { input_1_val in_data 0 12 } } }
	input_2_val { ap_none {  { input_2_val in_data 0 12 } } }
	input_3_val { ap_none {  { input_3_val in_data 0 12 } } }
	input_4_val { ap_none {  { input_4_val in_data 0 12 } } }
	input_5_val { ap_none {  { input_5_val in_data 0 12 } } }
	input_6_val { ap_none {  { input_6_val in_data 0 12 } } }
	input_7_val { ap_none {  { input_7_val in_data 0 12 } } }
	input_8_val { ap_none {  { input_8_val in_data 0 12 } } }
	input_9_val { ap_none {  { input_9_val in_data 0 12 } } }
	input_10_val { ap_none {  { input_10_val in_data 0 12 } } }
	input_11_val { ap_none {  { input_11_val in_data 0 12 } } }
	input_12_val { ap_none {  { input_12_val in_data 0 12 } } }
	input_13_val { ap_none {  { input_13_val in_data 0 12 } } }
	input_14_val { ap_none {  { input_14_val in_data 0 12 } } }
	input_15_val { ap_none {  { input_15_val in_data 0 12 } } }
	output_0 { ap_vld {  { output_0 out_data 1 11 }  { output_0_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 11 }  { output_1_ap_vld out_vld 1 1 } } }
	output_2 { ap_vld {  { output_2 out_data 1 11 }  { output_2_ap_vld out_vld 1 1 } } }
	output_3 { ap_vld {  { output_3 out_data 1 11 }  { output_3_ap_vld out_vld 1 1 } } }
	output_4 { ap_vld {  { output_4 out_data 1 11 }  { output_4_ap_vld out_vld 1 1 } } }
	output_5 { ap_vld {  { output_5 out_data 1 11 }  { output_5_ap_vld out_vld 1 1 } } }
	output_6 { ap_vld {  { output_6 out_data 1 11 }  { output_6_ap_vld out_vld 1 1 } } }
	output_7 { ap_vld {  { output_7 out_data 1 11 }  { output_7_ap_vld out_vld 1 1 } } }
	output_8 { ap_vld {  { output_8 out_data 1 11 }  { output_8_ap_vld out_vld 1 1 } } }
	output_9 { ap_vld {  { output_9 out_data 1 11 }  { output_9_ap_vld out_vld 1 1 } } }
	output_10 { ap_vld {  { output_10 out_data 1 11 }  { output_10_ap_vld out_vld 1 1 } } }
	output_11 { ap_vld {  { output_11 out_data 1 11 }  { output_11_ap_vld out_vld 1 1 } } }
	output_12 { ap_vld {  { output_12 out_data 1 11 }  { output_12_ap_vld out_vld 1 1 } } }
	output_13 { ap_vld {  { output_13 out_data 1 11 }  { output_13_ap_vld out_vld 1 1 } } }
	output_14 { ap_vld {  { output_14 out_data 1 11 }  { output_14_ap_vld out_vld 1 1 } } }
	output_15 { ap_vld {  { output_15 out_data 1 11 }  { output_15_ap_vld out_vld 1 1 } } }
}
