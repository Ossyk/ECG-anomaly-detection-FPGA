set moduleName dense_linear
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {dense_linear}
set C_modelType { int 12 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_0_val int 11 regular  }
	{ input_1_val int 11 regular  }
	{ input_2_val int 11 regular  }
	{ input_3_val int 11 regular  }
	{ input_4_val int 11 regular  }
	{ input_5_val int 11 regular  }
	{ input_6_val int 11 regular  }
	{ input_7_val int 11 regular  }
	{ input_8_val int 11 regular  }
	{ input_9_val int 11 regular  }
	{ input_10_val int 11 regular  }
	{ input_11_val int 11 regular  }
	{ input_12_val int 11 regular  }
	{ input_13_val int 11 regular  }
	{ input_14_val int 11 regular  }
	{ input_15_val int 11 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_2_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_5_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_6_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_7_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_8_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_9_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_10_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_11_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_12_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_13_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_14_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_15_val", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 12} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_val sc_in sc_lv 11 signal 0 } 
	{ input_1_val sc_in sc_lv 11 signal 1 } 
	{ input_2_val sc_in sc_lv 11 signal 2 } 
	{ input_3_val sc_in sc_lv 11 signal 3 } 
	{ input_4_val sc_in sc_lv 11 signal 4 } 
	{ input_5_val sc_in sc_lv 11 signal 5 } 
	{ input_6_val sc_in sc_lv 11 signal 6 } 
	{ input_7_val sc_in sc_lv 11 signal 7 } 
	{ input_8_val sc_in sc_lv 11 signal 8 } 
	{ input_9_val sc_in sc_lv 11 signal 9 } 
	{ input_10_val sc_in sc_lv 11 signal 10 } 
	{ input_11_val sc_in sc_lv 11 signal 11 } 
	{ input_12_val sc_in sc_lv 11 signal 12 } 
	{ input_13_val sc_in sc_lv 11 signal 13 } 
	{ input_14_val sc_in sc_lv 11 signal 14 } 
	{ input_15_val sc_in sc_lv 11 signal 15 } 
	{ ap_return sc_out sc_lv 12 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_val", "role": "default" }} , 
 	{ "name": "input_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_val", "role": "default" }} , 
 	{ "name": "input_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2_val", "role": "default" }} , 
 	{ "name": "input_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3_val", "role": "default" }} , 
 	{ "name": "input_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_4_val", "role": "default" }} , 
 	{ "name": "input_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_5_val", "role": "default" }} , 
 	{ "name": "input_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_6_val", "role": "default" }} , 
 	{ "name": "input_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_7_val", "role": "default" }} , 
 	{ "name": "input_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_8_val", "role": "default" }} , 
 	{ "name": "input_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_9_val", "role": "default" }} , 
 	{ "name": "input_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_10_val", "role": "default" }} , 
 	{ "name": "input_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_11_val", "role": "default" }} , 
 	{ "name": "input_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_12_val", "role": "default" }} , 
 	{ "name": "input_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_13_val", "role": "default" }} , 
 	{ "name": "input_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_14_val", "role": "default" }} , 
 	{ "name": "input_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_15_val", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		input_15_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_0_val { ap_none {  { input_0_val in_data 0 11 } } }
	input_1_val { ap_none {  { input_1_val in_data 0 11 } } }
	input_2_val { ap_none {  { input_2_val in_data 0 11 } } }
	input_3_val { ap_none {  { input_3_val in_data 0 11 } } }
	input_4_val { ap_none {  { input_4_val in_data 0 11 } } }
	input_5_val { ap_none {  { input_5_val in_data 0 11 } } }
	input_6_val { ap_none {  { input_6_val in_data 0 11 } } }
	input_7_val { ap_none {  { input_7_val in_data 0 11 } } }
	input_8_val { ap_none {  { input_8_val in_data 0 11 } } }
	input_9_val { ap_none {  { input_9_val in_data 0 11 } } }
	input_10_val { ap_none {  { input_10_val in_data 0 11 } } }
	input_11_val { ap_none {  { input_11_val in_data 0 11 } } }
	input_12_val { ap_none {  { input_12_val in_data 0 11 } } }
	input_13_val { ap_none {  { input_13_val in_data 0 11 } } }
	input_14_val { ap_none {  { input_14_val in_data 0 11 } } }
	input_15_val { ap_none {  { input_15_val in_data 0 11 } } }
}
