set moduleName VecReader1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {VecReader1}
set C_modelType { void 0 }
set C_modelArgList {
	{ ddr0 int 128 regular {axi_master 0}  }
	{ fifoA21 int 128 regular {fifo 1 volatile }  }
	{ ddr int 64 regular {fifo 0}  }
	{ readRep int 32 regular {ap_stable 0} }
}
set C_modelArgMapList {[ 
	{ "Name" : "ddr0", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifoA21", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ddr", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "readRep", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ddr0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ddr0_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ddr0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ddr0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ddr0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ddr0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ddr0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ddr0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ddr0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ddr0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ddr0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ddr0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ddr0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ddr0_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_ddr0_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_ddr0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ddr0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ddr0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ddr0_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ddr0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ddr0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ddr0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ddr0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ddr0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ddr0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ddr0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ddr0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ddr0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ddr0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ddr0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ddr0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr0_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_ddr0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ddr0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ddr0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ddr0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ddr0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ddr0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ddr0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ddr0_BUSER sc_in sc_lv 1 signal 0 } 
	{ fifoA21_din sc_out sc_lv 128 signal 1 } 
	{ fifoA21_full_n sc_in sc_logic 1 signal 1 } 
	{ fifoA21_write sc_out sc_logic 1 signal 1 } 
	{ ddr_dout sc_in sc_lv 64 signal 2 } 
	{ ddr_empty_n sc_in sc_logic 1 signal 2 } 
	{ ddr_read sc_out sc_logic 1 signal 2 } 
	{ readRep sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ddr0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ddr0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ddr0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ddr0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "AWID" }} , 
 	{ "name": "m_axi_ddr0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ddr0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ddr0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ddr0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ddr0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ddr0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ddr0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ddr0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ddr0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ddr0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "WVALID" }} , 
 	{ "name": "m_axi_ddr0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "WREADY" }} , 
 	{ "name": "m_axi_ddr0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ddr0", "role": "WDATA" }} , 
 	{ "name": "m_axi_ddr0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ddr0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ddr0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "WLAST" }} , 
 	{ "name": "m_axi_ddr0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "WID" }} , 
 	{ "name": "m_axi_ddr0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "WUSER" }} , 
 	{ "name": "m_axi_ddr0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ddr0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ddr0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ddr0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "ARID" }} , 
 	{ "name": "m_axi_ddr0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ddr0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ddr0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ddr0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ddr0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ddr0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ddr0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ddr0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ddr0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ddr0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "RVALID" }} , 
 	{ "name": "m_axi_ddr0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "RREADY" }} , 
 	{ "name": "m_axi_ddr0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ddr0", "role": "RDATA" }} , 
 	{ "name": "m_axi_ddr0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "RLAST" }} , 
 	{ "name": "m_axi_ddr0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "RID" }} , 
 	{ "name": "m_axi_ddr0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "RUSER" }} , 
 	{ "name": "m_axi_ddr0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr0", "role": "RRESP" }} , 
 	{ "name": "m_axi_ddr0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "BVALID" }} , 
 	{ "name": "m_axi_ddr0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "BREADY" }} , 
 	{ "name": "m_axi_ddr0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr0", "role": "BRESP" }} , 
 	{ "name": "m_axi_ddr0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "BID" }} , 
 	{ "name": "m_axi_ddr0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "BUSER" }} , 
 	{ "name": "fifoA21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifoA21", "role": "din" }} , 
 	{ "name": "fifoA21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifoA21", "role": "full_n" }} , 
 	{ "name": "fifoA21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifoA21", "role": "write" }} , 
 	{ "name": "ddr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ddr", "role": "dout" }} , 
 	{ "name": "ddr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr", "role": "empty_n" }} , 
 	{ "name": "ddr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr", "role": "read" }} , 
 	{ "name": "readRep", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "readRep", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "VecReader1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ddr0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ddr0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ddr0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifoA21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoA21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ddr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ddr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "readRep", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	VecReader1 {
		ddr0 {Type I LastRead 9 FirstWrite -1}
		fifoA21 {Type O LastRead -1 FirstWrite 10}
		ddr {Type I LastRead 0 FirstWrite -1}
		readRep {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ddr0 { m_axi {  { m_axi_ddr0_AWVALID VALID 1 1 }  { m_axi_ddr0_AWREADY READY 0 1 }  { m_axi_ddr0_AWADDR ADDR 1 32 }  { m_axi_ddr0_AWID ID 1 1 }  { m_axi_ddr0_AWLEN LEN 1 32 }  { m_axi_ddr0_AWSIZE SIZE 1 3 }  { m_axi_ddr0_AWBURST BURST 1 2 }  { m_axi_ddr0_AWLOCK LOCK 1 2 }  { m_axi_ddr0_AWCACHE CACHE 1 4 }  { m_axi_ddr0_AWPROT PROT 1 3 }  { m_axi_ddr0_AWQOS QOS 1 4 }  { m_axi_ddr0_AWREGION REGION 1 4 }  { m_axi_ddr0_AWUSER USER 1 1 }  { m_axi_ddr0_WVALID VALID 1 1 }  { m_axi_ddr0_WREADY READY 0 1 }  { m_axi_ddr0_WDATA DATA 1 128 }  { m_axi_ddr0_WSTRB STRB 1 16 }  { m_axi_ddr0_WLAST LAST 1 1 }  { m_axi_ddr0_WID ID 1 1 }  { m_axi_ddr0_WUSER USER 1 1 }  { m_axi_ddr0_ARVALID VALID 1 1 }  { m_axi_ddr0_ARREADY READY 0 1 }  { m_axi_ddr0_ARADDR ADDR 1 32 }  { m_axi_ddr0_ARID ID 1 1 }  { m_axi_ddr0_ARLEN LEN 1 32 }  { m_axi_ddr0_ARSIZE SIZE 1 3 }  { m_axi_ddr0_ARBURST BURST 1 2 }  { m_axi_ddr0_ARLOCK LOCK 1 2 }  { m_axi_ddr0_ARCACHE CACHE 1 4 }  { m_axi_ddr0_ARPROT PROT 1 3 }  { m_axi_ddr0_ARQOS QOS 1 4 }  { m_axi_ddr0_ARREGION REGION 1 4 }  { m_axi_ddr0_ARUSER USER 1 1 }  { m_axi_ddr0_RVALID VALID 0 1 }  { m_axi_ddr0_RREADY READY 1 1 }  { m_axi_ddr0_RDATA DATA 0 128 }  { m_axi_ddr0_RLAST LAST 0 1 }  { m_axi_ddr0_RID ID 0 1 }  { m_axi_ddr0_RUSER USER 0 1 }  { m_axi_ddr0_RRESP RESP 0 2 }  { m_axi_ddr0_BVALID VALID 0 1 }  { m_axi_ddr0_BREADY READY 1 1 }  { m_axi_ddr0_BRESP RESP 0 2 }  { m_axi_ddr0_BID ID 0 1 }  { m_axi_ddr0_BUSER USER 0 1 } } }
	fifoA21 { ap_fifo {  { fifoA21_din fifo_data 1 128 }  { fifoA21_full_n fifo_status 0 1 }  { fifoA21_write fifo_update 1 1 } } }
	ddr { ap_fifo {  { ddr_dout fifo_data 0 64 }  { ddr_empty_n fifo_status 0 1 }  { ddr_read fifo_update 1 1 } } }
	readRep { ap_none {  { readRep in_data 0 32 } } }
}
