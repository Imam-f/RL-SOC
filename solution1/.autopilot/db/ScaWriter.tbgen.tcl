set moduleName ScaWriter
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
set C_modelName {ScaWriter}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifoC325 int 32 regular {fifo 0 volatile }  }
	{ ddr2 int 32 regular {axi_master 1}  }
	{ ddr int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifoC325", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ddr2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ddr", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifoC325_dout sc_in sc_lv 32 signal 0 } 
	{ fifoC325_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifoC325_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr2_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_ddr2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_ddr2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_ddr2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr2_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_ddr2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_ddr2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_ddr2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ddr2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ddr2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ddr2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ddr2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ddr2_BUSER sc_in sc_lv 1 signal 1 } 
	{ ddr_dout sc_in sc_lv 64 signal 2 } 
	{ ddr_empty_n sc_in sc_logic 1 signal 2 } 
	{ ddr_read sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifoC325_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifoC325", "role": "dout" }} , 
 	{ "name": "fifoC325_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifoC325", "role": "empty_n" }} , 
 	{ "name": "fifoC325_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifoC325", "role": "read" }} , 
 	{ "name": "m_axi_ddr2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ddr2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ddr2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ddr2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "AWID" }} , 
 	{ "name": "m_axi_ddr2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ddr2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ddr2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ddr2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ddr2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ddr2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ddr2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ddr2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ddr2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ddr2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "WVALID" }} , 
 	{ "name": "m_axi_ddr2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "WREADY" }} , 
 	{ "name": "m_axi_ddr2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr2", "role": "WDATA" }} , 
 	{ "name": "m_axi_ddr2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ddr2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "WLAST" }} , 
 	{ "name": "m_axi_ddr2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "WID" }} , 
 	{ "name": "m_axi_ddr2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "WUSER" }} , 
 	{ "name": "m_axi_ddr2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ddr2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ddr2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ddr2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "ARID" }} , 
 	{ "name": "m_axi_ddr2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ddr2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ddr2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ddr2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ddr2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ddr2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ddr2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ddr2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ddr2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ddr2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "RVALID" }} , 
 	{ "name": "m_axi_ddr2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "RREADY" }} , 
 	{ "name": "m_axi_ddr2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr2", "role": "RDATA" }} , 
 	{ "name": "m_axi_ddr2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "RLAST" }} , 
 	{ "name": "m_axi_ddr2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "RID" }} , 
 	{ "name": "m_axi_ddr2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "RUSER" }} , 
 	{ "name": "m_axi_ddr2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr2", "role": "RRESP" }} , 
 	{ "name": "m_axi_ddr2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "BVALID" }} , 
 	{ "name": "m_axi_ddr2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "BREADY" }} , 
 	{ "name": "m_axi_ddr2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr2", "role": "BRESP" }} , 
 	{ "name": "m_axi_ddr2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "BID" }} , 
 	{ "name": "m_axi_ddr2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "BUSER" }} , 
 	{ "name": "ddr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ddr", "role": "dout" }} , 
 	{ "name": "ddr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr", "role": "empty_n" }} , 
 	{ "name": "ddr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ScaWriter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifoC325", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "fifoC325_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ddr2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ddr2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ddr2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ddr2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ddr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6",
				"BlockSignal" : [
					{"Name" : "ddr_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ScaWriter {
		fifoC325 {Type I LastRead 0 FirstWrite -1}
		ddr2 {Type O LastRead 3 FirstWrite 2}
		ddr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifoC325 { ap_fifo {  { fifoC325_dout fifo_data 0 32 }  { fifoC325_empty_n fifo_status 0 1 }  { fifoC325_read fifo_update 1 1 } } }
	ddr2 { m_axi {  { m_axi_ddr2_AWVALID VALID 1 1 }  { m_axi_ddr2_AWREADY READY 0 1 }  { m_axi_ddr2_AWADDR ADDR 1 32 }  { m_axi_ddr2_AWID ID 1 1 }  { m_axi_ddr2_AWLEN LEN 1 32 }  { m_axi_ddr2_AWSIZE SIZE 1 3 }  { m_axi_ddr2_AWBURST BURST 1 2 }  { m_axi_ddr2_AWLOCK LOCK 1 2 }  { m_axi_ddr2_AWCACHE CACHE 1 4 }  { m_axi_ddr2_AWPROT PROT 1 3 }  { m_axi_ddr2_AWQOS QOS 1 4 }  { m_axi_ddr2_AWREGION REGION 1 4 }  { m_axi_ddr2_AWUSER USER 1 1 }  { m_axi_ddr2_WVALID VALID 1 1 }  { m_axi_ddr2_WREADY READY 0 1 }  { m_axi_ddr2_WDATA DATA 1 32 }  { m_axi_ddr2_WSTRB STRB 1 4 }  { m_axi_ddr2_WLAST LAST 1 1 }  { m_axi_ddr2_WID ID 1 1 }  { m_axi_ddr2_WUSER USER 1 1 }  { m_axi_ddr2_ARVALID VALID 1 1 }  { m_axi_ddr2_ARREADY READY 0 1 }  { m_axi_ddr2_ARADDR ADDR 1 32 }  { m_axi_ddr2_ARID ID 1 1 }  { m_axi_ddr2_ARLEN LEN 1 32 }  { m_axi_ddr2_ARSIZE SIZE 1 3 }  { m_axi_ddr2_ARBURST BURST 1 2 }  { m_axi_ddr2_ARLOCK LOCK 1 2 }  { m_axi_ddr2_ARCACHE CACHE 1 4 }  { m_axi_ddr2_ARPROT PROT 1 3 }  { m_axi_ddr2_ARQOS QOS 1 4 }  { m_axi_ddr2_ARREGION REGION 1 4 }  { m_axi_ddr2_ARUSER USER 1 1 }  { m_axi_ddr2_RVALID VALID 0 1 }  { m_axi_ddr2_RREADY READY 1 1 }  { m_axi_ddr2_RDATA DATA 0 32 }  { m_axi_ddr2_RLAST LAST 0 1 }  { m_axi_ddr2_RID ID 0 1 }  { m_axi_ddr2_RUSER USER 0 1 }  { m_axi_ddr2_RRESP RESP 0 2 }  { m_axi_ddr2_BVALID VALID 0 1 }  { m_axi_ddr2_BREADY READY 1 1 }  { m_axi_ddr2_BRESP RESP 0 2 }  { m_axi_ddr2_BID ID 0 1 }  { m_axi_ddr2_BUSER USER 0 1 } } }
	ddr { ap_fifo {  { ddr_dout fifo_data 0 64 }  { ddr_empty_n fifo_status 0 1 }  { ddr_read fifo_update 1 1 } } }
}
