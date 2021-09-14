set moduleName VecDotProduct_entry43
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {VecDotProduct.entry43}
set C_modelType { void 0 }
set C_modelArgList {
	{ vecA int 64 regular  }
	{ vecB int 64 regular  }
	{ scaC int 64 regular  }
	{ vecA_out int 64 regular {fifo 1}  }
	{ vecB_out int 64 regular {fifo 1}  }
	{ scaC_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vecA", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vecB", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "scaC", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vecA_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vecB_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scaC_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ vecA sc_in sc_lv 64 signal 0 } 
	{ vecB sc_in sc_lv 64 signal 1 } 
	{ scaC sc_in sc_lv 64 signal 2 } 
	{ vecA_out_din sc_out sc_lv 64 signal 3 } 
	{ vecA_out_full_n sc_in sc_logic 1 signal 3 } 
	{ vecA_out_write sc_out sc_logic 1 signal 3 } 
	{ vecB_out_din sc_out sc_lv 64 signal 4 } 
	{ vecB_out_full_n sc_in sc_logic 1 signal 4 } 
	{ vecB_out_write sc_out sc_logic 1 signal 4 } 
	{ scaC_out_din sc_out sc_lv 64 signal 5 } 
	{ scaC_out_full_n sc_in sc_logic 1 signal 5 } 
	{ scaC_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "vecA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "vecA", "role": "default" }} , 
 	{ "name": "vecB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "vecB", "role": "default" }} , 
 	{ "name": "scaC", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "scaC", "role": "default" }} , 
 	{ "name": "vecA_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "vecA_out", "role": "din" }} , 
 	{ "name": "vecA_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecA_out", "role": "full_n" }} , 
 	{ "name": "vecA_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecA_out", "role": "write" }} , 
 	{ "name": "vecB_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "vecB_out", "role": "din" }} , 
 	{ "name": "vecB_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecB_out", "role": "full_n" }} , 
 	{ "name": "vecB_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecB_out", "role": "write" }} , 
 	{ "name": "scaC_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "scaC_out", "role": "din" }} , 
 	{ "name": "scaC_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scaC_out", "role": "full_n" }} , 
 	{ "name": "scaC_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scaC_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "VecDotProduct_entry43",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "vecA", "Type" : "None", "Direction" : "I"},
			{"Name" : "vecB", "Type" : "None", "Direction" : "I"},
			{"Name" : "scaC", "Type" : "None", "Direction" : "I"},
			{"Name" : "vecA_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "vecA_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vecB_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "vecB_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scaC_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6",
				"BlockSignal" : [
					{"Name" : "scaC_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	VecDotProduct_entry43 {
		vecA {Type I LastRead 0 FirstWrite -1}
		vecB {Type I LastRead 0 FirstWrite -1}
		scaC {Type I LastRead 0 FirstWrite -1}
		vecA_out {Type O LastRead -1 FirstWrite 0}
		vecB_out {Type O LastRead -1 FirstWrite 0}
		scaC_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vecA { ap_none {  { vecA in_data 0 64 } } }
	vecB { ap_none {  { vecB in_data 0 64 } } }
	scaC { ap_none {  { scaC in_data 0 64 } } }
	vecA_out { ap_fifo {  { vecA_out_din fifo_data 1 64 }  { vecA_out_full_n fifo_status 0 1 }  { vecA_out_write fifo_update 1 1 } } }
	vecB_out { ap_fifo {  { vecB_out_din fifo_data 1 64 }  { vecB_out_full_n fifo_status 0 1 }  { vecB_out_write fifo_update 1 1 } } }
	scaC_out { ap_fifo {  { scaC_out_din fifo_data 1 64 }  { scaC_out_full_n fifo_status 0 1 }  { scaC_out_write fifo_update 1 1 } } }
}
