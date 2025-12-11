set moduleName conv1d_relu2
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
set C_modelName {conv1d_relu2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_0_0 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_0_1 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_0_2 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_0_3 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_0_4 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1_0 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1_1 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1_2 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1_3 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1_4 { MEM_WIDTH 11 MEM_SIZE 576 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_0 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_1 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_2 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_3 { MEM_WIDTH 11 MEM_SIZE 2824 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ input_0_0 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_0_1 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_0_2 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_0_3 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_0_4 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_1_0 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_1_1 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_1_2 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_1_3 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ input_1_4 int 11 regular {array 288 { 1 1 } 1 1 }  }
	{ output_0 int 11 regular {array 1412 { 0 3 } 0 1 }  }
	{ output_1 int 11 regular {array 1412 { 0 3 } 0 1 }  }
	{ output_2 int 11 regular {array 1412 { 0 3 } 0 1 }  }
	{ output_3 int 11 regular {array 1412 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0_0", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_0_1", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_0_2", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_0_3", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_0_4", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_0", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_1", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_2", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_3", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_4", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_0_address0 sc_out sc_lv 9 signal 0 } 
	{ input_0_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_0_q0 sc_in sc_lv 11 signal 0 } 
	{ input_0_0_address1 sc_out sc_lv 9 signal 0 } 
	{ input_0_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_0_0_q1 sc_in sc_lv 11 signal 0 } 
	{ input_0_1_address0 sc_out sc_lv 9 signal 1 } 
	{ input_0_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_0_1_q0 sc_in sc_lv 11 signal 1 } 
	{ input_0_1_address1 sc_out sc_lv 9 signal 1 } 
	{ input_0_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_0_1_q1 sc_in sc_lv 11 signal 1 } 
	{ input_0_2_address0 sc_out sc_lv 9 signal 2 } 
	{ input_0_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_0_2_q0 sc_in sc_lv 11 signal 2 } 
	{ input_0_2_address1 sc_out sc_lv 9 signal 2 } 
	{ input_0_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_0_2_q1 sc_in sc_lv 11 signal 2 } 
	{ input_0_3_address0 sc_out sc_lv 9 signal 3 } 
	{ input_0_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_0_3_q0 sc_in sc_lv 11 signal 3 } 
	{ input_0_3_address1 sc_out sc_lv 9 signal 3 } 
	{ input_0_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_0_3_q1 sc_in sc_lv 11 signal 3 } 
	{ input_0_4_address0 sc_out sc_lv 9 signal 4 } 
	{ input_0_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_0_4_q0 sc_in sc_lv 11 signal 4 } 
	{ input_0_4_address1 sc_out sc_lv 9 signal 4 } 
	{ input_0_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ input_0_4_q1 sc_in sc_lv 11 signal 4 } 
	{ input_1_0_address0 sc_out sc_lv 9 signal 5 } 
	{ input_1_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_1_0_q0 sc_in sc_lv 11 signal 5 } 
	{ input_1_0_address1 sc_out sc_lv 9 signal 5 } 
	{ input_1_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ input_1_0_q1 sc_in sc_lv 11 signal 5 } 
	{ input_1_1_address0 sc_out sc_lv 9 signal 6 } 
	{ input_1_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_1_1_q0 sc_in sc_lv 11 signal 6 } 
	{ input_1_1_address1 sc_out sc_lv 9 signal 6 } 
	{ input_1_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ input_1_1_q1 sc_in sc_lv 11 signal 6 } 
	{ input_1_2_address0 sc_out sc_lv 9 signal 7 } 
	{ input_1_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_1_2_q0 sc_in sc_lv 11 signal 7 } 
	{ input_1_2_address1 sc_out sc_lv 9 signal 7 } 
	{ input_1_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ input_1_2_q1 sc_in sc_lv 11 signal 7 } 
	{ input_1_3_address0 sc_out sc_lv 9 signal 8 } 
	{ input_1_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_1_3_q0 sc_in sc_lv 11 signal 8 } 
	{ input_1_3_address1 sc_out sc_lv 9 signal 8 } 
	{ input_1_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ input_1_3_q1 sc_in sc_lv 11 signal 8 } 
	{ input_1_4_address0 sc_out sc_lv 9 signal 9 } 
	{ input_1_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_1_4_q0 sc_in sc_lv 11 signal 9 } 
	{ input_1_4_address1 sc_out sc_lv 9 signal 9 } 
	{ input_1_4_ce1 sc_out sc_logic 1 signal 9 } 
	{ input_1_4_q1 sc_in sc_lv 11 signal 9 } 
	{ output_0_address0 sc_out sc_lv 11 signal 10 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ output_0_we0 sc_out sc_logic 1 signal 10 } 
	{ output_0_d0 sc_out sc_lv 11 signal 10 } 
	{ output_1_address0 sc_out sc_lv 11 signal 11 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_1_we0 sc_out sc_logic 1 signal 11 } 
	{ output_1_d0 sc_out sc_lv 11 signal 11 } 
	{ output_2_address0 sc_out sc_lv 11 signal 12 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ output_2_we0 sc_out sc_logic 1 signal 12 } 
	{ output_2_d0 sc_out sc_lv 11 signal 12 } 
	{ output_3_address0 sc_out sc_lv 11 signal 13 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ output_3_we0 sc_out sc_logic 1 signal 13 } 
	{ output_3_d0 sc_out sc_lv 11 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_0", "role": "address0" }} , 
 	{ "name": "input_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_0", "role": "ce0" }} , 
 	{ "name": "input_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_0", "role": "q0" }} , 
 	{ "name": "input_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_0", "role": "address1" }} , 
 	{ "name": "input_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_0", "role": "ce1" }} , 
 	{ "name": "input_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_0", "role": "q1" }} , 
 	{ "name": "input_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_1", "role": "address0" }} , 
 	{ "name": "input_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_1", "role": "ce0" }} , 
 	{ "name": "input_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_1", "role": "q0" }} , 
 	{ "name": "input_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_1", "role": "address1" }} , 
 	{ "name": "input_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_1", "role": "ce1" }} , 
 	{ "name": "input_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_1", "role": "q1" }} , 
 	{ "name": "input_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_2", "role": "address0" }} , 
 	{ "name": "input_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_2", "role": "ce0" }} , 
 	{ "name": "input_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_2", "role": "q0" }} , 
 	{ "name": "input_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_2", "role": "address1" }} , 
 	{ "name": "input_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_2", "role": "ce1" }} , 
 	{ "name": "input_0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_2", "role": "q1" }} , 
 	{ "name": "input_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_3", "role": "address0" }} , 
 	{ "name": "input_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_3", "role": "ce0" }} , 
 	{ "name": "input_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_3", "role": "q0" }} , 
 	{ "name": "input_0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_3", "role": "address1" }} , 
 	{ "name": "input_0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_3", "role": "ce1" }} , 
 	{ "name": "input_0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_3", "role": "q1" }} , 
 	{ "name": "input_0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_4", "role": "address0" }} , 
 	{ "name": "input_0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_4", "role": "ce0" }} , 
 	{ "name": "input_0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_4", "role": "q0" }} , 
 	{ "name": "input_0_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_0_4", "role": "address1" }} , 
 	{ "name": "input_0_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0_4", "role": "ce1" }} , 
 	{ "name": "input_0_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0_4", "role": "q1" }} , 
 	{ "name": "input_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_0", "role": "address0" }} , 
 	{ "name": "input_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_0", "role": "ce0" }} , 
 	{ "name": "input_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_0", "role": "q0" }} , 
 	{ "name": "input_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_0", "role": "address1" }} , 
 	{ "name": "input_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_0", "role": "ce1" }} , 
 	{ "name": "input_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_0", "role": "q1" }} , 
 	{ "name": "input_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_1", "role": "address0" }} , 
 	{ "name": "input_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_1", "role": "ce0" }} , 
 	{ "name": "input_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_1", "role": "q0" }} , 
 	{ "name": "input_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_1", "role": "address1" }} , 
 	{ "name": "input_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_1", "role": "ce1" }} , 
 	{ "name": "input_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_1", "role": "q1" }} , 
 	{ "name": "input_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_2", "role": "address0" }} , 
 	{ "name": "input_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_2", "role": "ce0" }} , 
 	{ "name": "input_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_2", "role": "q0" }} , 
 	{ "name": "input_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_2", "role": "address1" }} , 
 	{ "name": "input_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_2", "role": "ce1" }} , 
 	{ "name": "input_1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_2", "role": "q1" }} , 
 	{ "name": "input_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_3", "role": "address0" }} , 
 	{ "name": "input_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_3", "role": "ce0" }} , 
 	{ "name": "input_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_3", "role": "q0" }} , 
 	{ "name": "input_1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_3", "role": "address1" }} , 
 	{ "name": "input_1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_3", "role": "ce1" }} , 
 	{ "name": "input_1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_3", "role": "q1" }} , 
 	{ "name": "input_1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_4", "role": "address0" }} , 
 	{ "name": "input_1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_4", "role": "ce0" }} , 
 	{ "name": "input_1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_4", "role": "q0" }} , 
 	{ "name": "input_1_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_1_4", "role": "address1" }} , 
 	{ "name": "input_1_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1_4", "role": "ce1" }} , 
 	{ "name": "input_1_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1_4", "role": "q1" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		w_local_80_3_4 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11354", "Max" : "11354"}
	, {"Name" : "Interval", "Min" : "11354", "Max" : "11354"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_0_0 { ap_memory {  { input_0_0_address0 mem_address 1 9 }  { input_0_0_ce0 mem_ce 1 1 }  { input_0_0_q0 mem_dout 0 11 }  { input_0_0_address1 MemPortADDR2 1 9 }  { input_0_0_ce1 MemPortCE2 1 1 }  { input_0_0_q1 MemPortDOUT2 0 11 } } }
	input_0_1 { ap_memory {  { input_0_1_address0 mem_address 1 9 }  { input_0_1_ce0 mem_ce 1 1 }  { input_0_1_q0 mem_dout 0 11 }  { input_0_1_address1 MemPortADDR2 1 9 }  { input_0_1_ce1 MemPortCE2 1 1 }  { input_0_1_q1 MemPortDOUT2 0 11 } } }
	input_0_2 { ap_memory {  { input_0_2_address0 mem_address 1 9 }  { input_0_2_ce0 mem_ce 1 1 }  { input_0_2_q0 mem_dout 0 11 }  { input_0_2_address1 MemPortADDR2 1 9 }  { input_0_2_ce1 MemPortCE2 1 1 }  { input_0_2_q1 MemPortDOUT2 0 11 } } }
	input_0_3 { ap_memory {  { input_0_3_address0 mem_address 1 9 }  { input_0_3_ce0 mem_ce 1 1 }  { input_0_3_q0 mem_dout 0 11 }  { input_0_3_address1 MemPortADDR2 1 9 }  { input_0_3_ce1 MemPortCE2 1 1 }  { input_0_3_q1 MemPortDOUT2 0 11 } } }
	input_0_4 { ap_memory {  { input_0_4_address0 mem_address 1 9 }  { input_0_4_ce0 mem_ce 1 1 }  { input_0_4_q0 mem_dout 0 11 }  { input_0_4_address1 MemPortADDR2 1 9 }  { input_0_4_ce1 MemPortCE2 1 1 }  { input_0_4_q1 MemPortDOUT2 0 11 } } }
	input_1_0 { ap_memory {  { input_1_0_address0 mem_address 1 9 }  { input_1_0_ce0 mem_ce 1 1 }  { input_1_0_q0 mem_dout 0 11 }  { input_1_0_address1 MemPortADDR2 1 9 }  { input_1_0_ce1 MemPortCE2 1 1 }  { input_1_0_q1 MemPortDOUT2 0 11 } } }
	input_1_1 { ap_memory {  { input_1_1_address0 mem_address 1 9 }  { input_1_1_ce0 mem_ce 1 1 }  { input_1_1_q0 mem_dout 0 11 }  { input_1_1_address1 MemPortADDR2 1 9 }  { input_1_1_ce1 MemPortCE2 1 1 }  { input_1_1_q1 MemPortDOUT2 0 11 } } }
	input_1_2 { ap_memory {  { input_1_2_address0 mem_address 1 9 }  { input_1_2_ce0 mem_ce 1 1 }  { input_1_2_q0 mem_dout 0 11 }  { input_1_2_address1 MemPortADDR2 1 9 }  { input_1_2_ce1 MemPortCE2 1 1 }  { input_1_2_q1 MemPortDOUT2 0 11 } } }
	input_1_3 { ap_memory {  { input_1_3_address0 mem_address 1 9 }  { input_1_3_ce0 mem_ce 1 1 }  { input_1_3_q0 mem_dout 0 11 }  { input_1_3_address1 MemPortADDR2 1 9 }  { input_1_3_ce1 MemPortCE2 1 1 }  { input_1_3_q1 MemPortDOUT2 0 11 } } }
	input_1_4 { ap_memory {  { input_1_4_address0 mem_address 1 9 }  { input_1_4_ce0 mem_ce 1 1 }  { input_1_4_q0 mem_dout 0 11 }  { input_1_4_address1 MemPortADDR2 1 9 }  { input_1_4_ce1 MemPortCE2 1 1 }  { input_1_4_q1 MemPortDOUT2 0 11 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 11 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 11 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 11 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 11 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 11 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 11 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 11 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 11 } } }
}
