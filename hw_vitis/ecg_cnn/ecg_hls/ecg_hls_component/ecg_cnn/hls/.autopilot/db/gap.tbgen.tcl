set moduleName gap
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
set C_modelName {gap}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_0 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_2 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_3 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_0 int 11 regular {array 1412 { 1 3 } 1 1 }  }
	{ input_1 int 11 regular {array 1412 { 1 3 } 1 1 }  }
	{ input_2 int 11 regular {array 1412 { 1 3 } 1 1 }  }
	{ input_3 int 11 regular {array 1412 { 1 3 } 1 1 }  }
	{ output_0 int 12 regular {pointer 1}  }
	{ output_1 int 12 regular {pointer 1}  }
	{ output_2 int 12 regular {pointer 1}  }
	{ output_3 int 12 regular {pointer 1}  }
	{ output_4 int 12 regular {pointer 1}  }
	{ output_5 int 12 regular {pointer 1}  }
	{ output_6 int 12 regular {pointer 1}  }
	{ output_7 int 12 regular {pointer 1}  }
	{ output_8 int 12 regular {pointer 1}  }
	{ output_9 int 12 regular {pointer 1}  }
	{ output_10 int 12 regular {pointer 1}  }
	{ output_11 int 12 regular {pointer 1}  }
	{ output_12 int 12 regular {pointer 1}  }
	{ output_13 int 12 regular {pointer 1}  }
	{ output_14 int 12 regular {pointer 1}  }
	{ output_15 int 12 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_9", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_10", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_11", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_12", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_13", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_14", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_15", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 11 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 11 signal 0 } 
	{ input_1_address0 sc_out sc_lv 11 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 11 signal 1 } 
	{ input_2_address0 sc_out sc_lv 11 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 11 signal 2 } 
	{ input_3_address0 sc_out sc_lv 11 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 11 signal 3 } 
	{ output_0 sc_out sc_lv 12 signal 4 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ output_1 sc_out sc_lv 12 signal 5 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ output_2 sc_out sc_lv 12 signal 6 } 
	{ output_2_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ output_3 sc_out sc_lv 12 signal 7 } 
	{ output_3_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ output_4 sc_out sc_lv 12 signal 8 } 
	{ output_4_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ output_5 sc_out sc_lv 12 signal 9 } 
	{ output_5_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ output_6 sc_out sc_lv 12 signal 10 } 
	{ output_6_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ output_7 sc_out sc_lv 12 signal 11 } 
	{ output_7_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ output_8 sc_out sc_lv 12 signal 12 } 
	{ output_8_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ output_9 sc_out sc_lv 12 signal 13 } 
	{ output_9_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ output_10 sc_out sc_lv 12 signal 14 } 
	{ output_10_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ output_11 sc_out sc_lv 12 signal 15 } 
	{ output_11_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ output_12 sc_out sc_lv 12 signal 16 } 
	{ output_12_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ output_13 sc_out sc_lv 12 signal 17 } 
	{ output_13_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ output_14 sc_out sc_lv 12 signal 18 } 
	{ output_14_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ output_15 sc_out sc_lv 12 signal 19 } 
	{ output_15_ap_vld sc_out sc_logic 1 outvld 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "output_2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_2", "role": "default" }} , 
 	{ "name": "output_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2", "role": "ap_vld" }} , 
 	{ "name": "output_3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_3", "role": "default" }} , 
 	{ "name": "output_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3", "role": "ap_vld" }} , 
 	{ "name": "output_4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_4", "role": "default" }} , 
 	{ "name": "output_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_4", "role": "ap_vld" }} , 
 	{ "name": "output_5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_5", "role": "default" }} , 
 	{ "name": "output_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_5", "role": "ap_vld" }} , 
 	{ "name": "output_6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_6", "role": "default" }} , 
 	{ "name": "output_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_6", "role": "ap_vld" }} , 
 	{ "name": "output_7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_7", "role": "default" }} , 
 	{ "name": "output_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_7", "role": "ap_vld" }} , 
 	{ "name": "output_8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_8", "role": "default" }} , 
 	{ "name": "output_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_8", "role": "ap_vld" }} , 
 	{ "name": "output_9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_9", "role": "default" }} , 
 	{ "name": "output_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_9", "role": "ap_vld" }} , 
 	{ "name": "output_10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_10", "role": "default" }} , 
 	{ "name": "output_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_10", "role": "ap_vld" }} , 
 	{ "name": "output_11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_11", "role": "default" }} , 
 	{ "name": "output_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_11", "role": "ap_vld" }} , 
 	{ "name": "output_12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_12", "role": "default" }} , 
 	{ "name": "output_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_12", "role": "ap_vld" }} , 
 	{ "name": "output_13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_13", "role": "default" }} , 
 	{ "name": "output_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_13", "role": "ap_vld" }} , 
 	{ "name": "output_14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_14", "role": "default" }} , 
 	{ "name": "output_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_14", "role": "ap_vld" }} , 
 	{ "name": "output_15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_15", "role": "default" }} , 
 	{ "name": "output_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_15", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		sum_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5745", "Max" : "5745"}
	, {"Name" : "Interval", "Min" : "5745", "Max" : "5745"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 11 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 11 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 11 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 11 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 11 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 11 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 11 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 11 } } }
	output_0 { ap_vld {  { output_0 out_data 1 12 }  { output_0_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 12 }  { output_1_ap_vld out_vld 1 1 } } }
	output_2 { ap_vld {  { output_2 out_data 1 12 }  { output_2_ap_vld out_vld 1 1 } } }
	output_3 { ap_vld {  { output_3 out_data 1 12 }  { output_3_ap_vld out_vld 1 1 } } }
	output_4 { ap_vld {  { output_4 out_data 1 12 }  { output_4_ap_vld out_vld 1 1 } } }
	output_5 { ap_vld {  { output_5 out_data 1 12 }  { output_5_ap_vld out_vld 1 1 } } }
	output_6 { ap_vld {  { output_6 out_data 1 12 }  { output_6_ap_vld out_vld 1 1 } } }
	output_7 { ap_vld {  { output_7 out_data 1 12 }  { output_7_ap_vld out_vld 1 1 } } }
	output_8 { ap_vld {  { output_8 out_data 1 12 }  { output_8_ap_vld out_vld 1 1 } } }
	output_9 { ap_vld {  { output_9 out_data 1 12 }  { output_9_ap_vld out_vld 1 1 } } }
	output_10 { ap_vld {  { output_10 out_data 1 12 }  { output_10_ap_vld out_vld 1 1 } } }
	output_11 { ap_vld {  { output_11 out_data 1 12 }  { output_11_ap_vld out_vld 1 1 } } }
	output_12 { ap_vld {  { output_12 out_data 1 12 }  { output_12_ap_vld out_vld 1 1 } } }
	output_13 { ap_vld {  { output_13 out_data 1 12 }  { output_13_ap_vld out_vld 1 1 } } }
	output_14 { ap_vld {  { output_14 out_data 1 12 }  { output_14_ap_vld out_vld 1 1 } } }
	output_15 { ap_vld {  { output_15 out_data 1 12 }  { output_15_ap_vld out_vld 1 1 } } }
}
