set moduleName VecDotProduct
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {VecDotProduct}
set C_modelType { void 0 }
set C_modelArgList {
	{ ddr0 int 128 regular {axi_master 0}  }
	{ ddr1 int 128 regular {axi_master 0}  }
	{ ddr2 int 32 regular {axi_master 1}  }
	{ vecA int 64 regular {axi_slave 0}  }
	{ vecB int 64 regular {axi_slave 0}  }
	{ scaC int 64 regular {axi_slave 0}  }
	{ readRep int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ddr0", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "vecA","cData": "int128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "vecA","bundle": "control_r"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "ddr1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "vecB","cData": "int128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "vecB","bundle": "control_r"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "ddr2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "scaC","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "scaC","bundle": "control_r"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "vecA", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "vecB", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "scaC", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "readRep", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "readRep","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 172
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_r_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_r_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_r_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_r_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_r_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_r_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_r_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_ddr0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ddr0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ddr0_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ddr0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ddr0_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_ddr0_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_ddr1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr1_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_ddr1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ddr1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr1_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_ddr1_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_ddr1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr1_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_ddr1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ddr1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ddr1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ddr1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ddr1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ddr1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr1_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_ddr1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ddr1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ddr1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ddr1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ddr1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ddr1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ddr1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ddr1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ddr2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ddr2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ddr2_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ddr2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ddr2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_ddr2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ddr2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ddr2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ddr2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ddr2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ddr2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ddr2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ddr2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ddr2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ddr2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ddr2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_ddr2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_ddr2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_ddr2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ddr2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ddr2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ddr2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ddr2_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ddr2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ddr2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_ddr2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ddr2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ddr2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ddr2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ddr2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ddr2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ddr2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ddr2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ddr2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ddr2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ddr2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_ddr2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_ddr2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ddr2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_ddr2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ddr2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ddr2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ddr2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ddr2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ddr2_BUSER sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"readRep","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "s_axi_control_r_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control_r", "role": "AWADDR" },"address":[{"name":"VecDotProduct","role":"start","value":"0","valid_bit":"0"},{"name":"VecDotProduct","role":"continue","value":"0","valid_bit":"4"},{"name":"VecDotProduct","role":"auto_start","value":"0","valid_bit":"7"},{"name":"vecA","role":"data","value":"16"},{"name":"vecB","role":"data","value":"28"},{"name":"scaC","role":"data","value":"40"}] },
	{ "name": "s_axi_control_r_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWVALID" } },
	{ "name": "s_axi_control_r_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWREADY" } },
	{ "name": "s_axi_control_r_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WVALID" } },
	{ "name": "s_axi_control_r_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WREADY" } },
	{ "name": "s_axi_control_r_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "WDATA" } },
	{ "name": "s_axi_control_r_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control_r", "role": "WSTRB" } },
	{ "name": "s_axi_control_r_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control_r", "role": "ARADDR" },"address":[{"name":"VecDotProduct","role":"start","value":"0","valid_bit":"0"},{"name":"VecDotProduct","role":"done","value":"0","valid_bit":"1"},{"name":"VecDotProduct","role":"idle","value":"0","valid_bit":"2"},{"name":"VecDotProduct","role":"ready","value":"0","valid_bit":"3"},{"name":"VecDotProduct","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_r_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARVALID" } },
	{ "name": "s_axi_control_r_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARREADY" } },
	{ "name": "s_axi_control_r_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RVALID" } },
	{ "name": "s_axi_control_r_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RREADY" } },
	{ "name": "s_axi_control_r_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "RDATA" } },
	{ "name": "s_axi_control_r_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "RRESP" } },
	{ "name": "s_axi_control_r_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BVALID" } },
	{ "name": "s_axi_control_r_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BREADY" } },
	{ "name": "s_axi_control_r_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_ddr0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ddr0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ddr0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ddr0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr0", "role": "AWID" }} , 
 	{ "name": "m_axi_ddr0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ddr0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ddr0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ddr0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ddr1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ddr1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ddr1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ddr1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "AWID" }} , 
 	{ "name": "m_axi_ddr1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ddr1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ddr1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ddr1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ddr1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ddr1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ddr1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ddr1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ddr1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ddr1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ddr1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "WVALID" }} , 
 	{ "name": "m_axi_ddr1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "WREADY" }} , 
 	{ "name": "m_axi_ddr1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ddr1", "role": "WDATA" }} , 
 	{ "name": "m_axi_ddr1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ddr1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ddr1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "WLAST" }} , 
 	{ "name": "m_axi_ddr1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "WID" }} , 
 	{ "name": "m_axi_ddr1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "WUSER" }} , 
 	{ "name": "m_axi_ddr1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ddr1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ddr1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ddr1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "ARID" }} , 
 	{ "name": "m_axi_ddr1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ddr1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ddr1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ddr1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ddr1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ddr1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ddr1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ddr1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ddr1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ddr1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ddr1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ddr1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ddr1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "RVALID" }} , 
 	{ "name": "m_axi_ddr1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "RREADY" }} , 
 	{ "name": "m_axi_ddr1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ddr1", "role": "RDATA" }} , 
 	{ "name": "m_axi_ddr1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "RLAST" }} , 
 	{ "name": "m_axi_ddr1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "RID" }} , 
 	{ "name": "m_axi_ddr1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "RUSER" }} , 
 	{ "name": "m_axi_ddr1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr1", "role": "RRESP" }} , 
 	{ "name": "m_axi_ddr1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "BVALID" }} , 
 	{ "name": "m_axi_ddr1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "BREADY" }} , 
 	{ "name": "m_axi_ddr1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ddr1", "role": "BRESP" }} , 
 	{ "name": "m_axi_ddr1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "BID" }} , 
 	{ "name": "m_axi_ddr1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr1", "role": "BUSER" }} , 
 	{ "name": "m_axi_ddr2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ddr2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ddr2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ddr2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "AWID" }} , 
 	{ "name": "m_axi_ddr2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ddr2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ddr2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ddr2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ddr2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ddr2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "VecDotProduct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "6", "Name" : "VecDotProduct_entry43_U0"},
			{"ID" : "7", "Name" : "VecReader_U0"},
			{"ID" : "8", "Name" : "VecReader1_U0"}],
		"OutputProcess" : [
			{"ID" : "28", "Name" : "ScaWriter_U0"}],
		"Port" : [
			{"Name" : "ddr0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "VecReader_U0", "Port" : "ddr0"}]},
			{"Name" : "ddr1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "VecReader1_U0", "Port" : "ddr0"}]},
			{"Name" : "ddr2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "ScaWriter_U0", "Port" : "ddr2"}]},
			{"Name" : "vecA", "Type" : "None", "Direction" : "I"},
			{"Name" : "vecB", "Type" : "None", "Direction" : "I"},
			{"Name" : "scaC", "Type" : "None", "Direction" : "I"},
			{"Name" : "readRep", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_r_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddr0_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddr1_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddr2_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.VecDotProduct_entry43_U0", "Parent" : "0",
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
			{"Name" : "vecA_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "29", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "vecA_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vecB_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "30", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "vecB_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scaC_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "31", "DependentChanDepth" : "6",
				"BlockSignal" : [
					{"Name" : "scaC_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.VecReader_U0", "Parent" : "0",
		"CDFG" : "VecReader",
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
			{"Name" : "fifoA21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "32", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoA21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ddr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "29", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ddr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "readRep", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.VecReader1_U0", "Parent" : "0",
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
			{"Name" : "fifoA21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "33", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoA21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ddr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "30", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ddr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "readRep", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "EWiseMultipiler",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "7",
		"StartFifo" : "start_for_EWiseMultipiler_U0_U",
		"Port" : [
			{"Name" : "fifoA21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "32", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoA21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifoB22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "33", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoB22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifoC123", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "34", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoC123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "readRep", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U15", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U16", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U17", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U18", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U19", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U20", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U21", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U22", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U23", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U24", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U25", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U26", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U27", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U28", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U29", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.EWiseMultipiler_U0.mul_8s_8s_16_1_1_U30", "Parent" : "9"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AdderTree_U0", "Parent" : "0",
		"CDFG" : "AdderTree",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_AdderTree_U0_U",
		"Port" : [
			{"Name" : "fifoC123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "34", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoC123_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifoC224", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "35", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoC224_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "readRep", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Accumulator_U0", "Parent" : "0",
		"CDFG" : "Accumulator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "26",
		"StartFifo" : "start_for_Accumulator_U0_U",
		"Port" : [
			{"Name" : "fifoC224", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "35", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "fifoC224_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifoC325", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "36", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "fifoC325_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "readRep", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ScaWriter_U0", "Parent" : "0",
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
		"StartSource" : "6",
		"StartFifo" : "start_for_ScaWriter_U0_U",
		"Port" : [
			{"Name" : "fifoC325", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "36", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "fifoC325_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ddr2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ddr2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ddr2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ddr2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ddr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "31", "DependentChanDepth" : "6",
				"BlockSignal" : [
					{"Name" : "ddr_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vecA_c_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vecB_c_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaC_c_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifoA_stream_s_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifoB_stream_s_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifoC1_stream_s_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifoC2_stream_s_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifoC3_stream_s_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ScaWriter_U0_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_EWiseMultipiler_U0_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_AdderTree_U0_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Accumulator_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	VecDotProduct {
		ddr0 {Type I LastRead 9 FirstWrite -1}
		ddr1 {Type I LastRead 9 FirstWrite -1}
		ddr2 {Type O LastRead 3 FirstWrite 2}
		vecA {Type I LastRead 0 FirstWrite -1}
		vecB {Type I LastRead 0 FirstWrite -1}
		scaC {Type I LastRead 0 FirstWrite -1}
		readRep {Type I LastRead 0 FirstWrite -1}}
	VecDotProduct_entry43 {
		vecA {Type I LastRead 0 FirstWrite -1}
		vecB {Type I LastRead 0 FirstWrite -1}
		scaC {Type I LastRead 0 FirstWrite -1}
		vecA_out {Type O LastRead -1 FirstWrite 0}
		vecB_out {Type O LastRead -1 FirstWrite 0}
		scaC_out {Type O LastRead -1 FirstWrite 0}}
	VecReader {
		ddr0 {Type I LastRead 9 FirstWrite -1}
		fifoA21 {Type O LastRead -1 FirstWrite 10}
		ddr {Type I LastRead 0 FirstWrite -1}
		readRep {Type I LastRead 0 FirstWrite -1}}
	VecReader1 {
		ddr0 {Type I LastRead 9 FirstWrite -1}
		fifoA21 {Type O LastRead -1 FirstWrite 10}
		ddr {Type I LastRead 0 FirstWrite -1}
		readRep {Type I LastRead 0 FirstWrite -1}}
	EWiseMultipiler {
		fifoA21 {Type I LastRead 2 FirstWrite -1}
		fifoB22 {Type I LastRead 2 FirstWrite -1}
		fifoC123 {Type O LastRead -1 FirstWrite 2}
		readRep {Type I LastRead 0 FirstWrite -1}}
	AdderTree {
		fifoC123 {Type I LastRead 2 FirstWrite -1}
		fifoC224 {Type O LastRead -1 FirstWrite 3}
		readRep {Type I LastRead 0 FirstWrite -1}}
	Accumulator {
		fifoC224 {Type I LastRead 2 FirstWrite -1}
		fifoC325 {Type O LastRead -1 FirstWrite 2}
		readRep {Type I LastRead 0 FirstWrite -1}}
	ScaWriter {
		fifoC325 {Type I LastRead 0 FirstWrite -1}
		ddr2 {Type O LastRead 3 FirstWrite 2}
		ddr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ddr0 { m_axi {  { m_axi_ddr0_AWVALID VALID 1 1 }  { m_axi_ddr0_AWREADY READY 0 1 }  { m_axi_ddr0_AWADDR ADDR 1 32 }  { m_axi_ddr0_AWID ID 1 1 }  { m_axi_ddr0_AWLEN LEN 1 8 }  { m_axi_ddr0_AWSIZE SIZE 1 3 }  { m_axi_ddr0_AWBURST BURST 1 2 }  { m_axi_ddr0_AWLOCK LOCK 1 2 }  { m_axi_ddr0_AWCACHE CACHE 1 4 }  { m_axi_ddr0_AWPROT PROT 1 3 }  { m_axi_ddr0_AWQOS QOS 1 4 }  { m_axi_ddr0_AWREGION REGION 1 4 }  { m_axi_ddr0_AWUSER USER 1 1 }  { m_axi_ddr0_WVALID VALID 1 1 }  { m_axi_ddr0_WREADY READY 0 1 }  { m_axi_ddr0_WDATA DATA 1 128 }  { m_axi_ddr0_WSTRB STRB 1 16 }  { m_axi_ddr0_WLAST LAST 1 1 }  { m_axi_ddr0_WID ID 1 1 }  { m_axi_ddr0_WUSER USER 1 1 }  { m_axi_ddr0_ARVALID VALID 1 1 }  { m_axi_ddr0_ARREADY READY 0 1 }  { m_axi_ddr0_ARADDR ADDR 1 32 }  { m_axi_ddr0_ARID ID 1 1 }  { m_axi_ddr0_ARLEN LEN 1 8 }  { m_axi_ddr0_ARSIZE SIZE 1 3 }  { m_axi_ddr0_ARBURST BURST 1 2 }  { m_axi_ddr0_ARLOCK LOCK 1 2 }  { m_axi_ddr0_ARCACHE CACHE 1 4 }  { m_axi_ddr0_ARPROT PROT 1 3 }  { m_axi_ddr0_ARQOS QOS 1 4 }  { m_axi_ddr0_ARREGION REGION 1 4 }  { m_axi_ddr0_ARUSER USER 1 1 }  { m_axi_ddr0_RVALID VALID 0 1 }  { m_axi_ddr0_RREADY READY 1 1 }  { m_axi_ddr0_RDATA DATA 0 128 }  { m_axi_ddr0_RLAST LAST 0 1 }  { m_axi_ddr0_RID ID 0 1 }  { m_axi_ddr0_RUSER USER 0 1 }  { m_axi_ddr0_RRESP RESP 0 2 }  { m_axi_ddr0_BVALID VALID 0 1 }  { m_axi_ddr0_BREADY READY 1 1 }  { m_axi_ddr0_BRESP RESP 0 2 }  { m_axi_ddr0_BID ID 0 1 }  { m_axi_ddr0_BUSER USER 0 1 } } }
	ddr1 { m_axi {  { m_axi_ddr1_AWVALID VALID 1 1 }  { m_axi_ddr1_AWREADY READY 0 1 }  { m_axi_ddr1_AWADDR ADDR 1 32 }  { m_axi_ddr1_AWID ID 1 1 }  { m_axi_ddr1_AWLEN LEN 1 8 }  { m_axi_ddr1_AWSIZE SIZE 1 3 }  { m_axi_ddr1_AWBURST BURST 1 2 }  { m_axi_ddr1_AWLOCK LOCK 1 2 }  { m_axi_ddr1_AWCACHE CACHE 1 4 }  { m_axi_ddr1_AWPROT PROT 1 3 }  { m_axi_ddr1_AWQOS QOS 1 4 }  { m_axi_ddr1_AWREGION REGION 1 4 }  { m_axi_ddr1_AWUSER USER 1 1 }  { m_axi_ddr1_WVALID VALID 1 1 }  { m_axi_ddr1_WREADY READY 0 1 }  { m_axi_ddr1_WDATA DATA 1 128 }  { m_axi_ddr1_WSTRB STRB 1 16 }  { m_axi_ddr1_WLAST LAST 1 1 }  { m_axi_ddr1_WID ID 1 1 }  { m_axi_ddr1_WUSER USER 1 1 }  { m_axi_ddr1_ARVALID VALID 1 1 }  { m_axi_ddr1_ARREADY READY 0 1 }  { m_axi_ddr1_ARADDR ADDR 1 32 }  { m_axi_ddr1_ARID ID 1 1 }  { m_axi_ddr1_ARLEN LEN 1 8 }  { m_axi_ddr1_ARSIZE SIZE 1 3 }  { m_axi_ddr1_ARBURST BURST 1 2 }  { m_axi_ddr1_ARLOCK LOCK 1 2 }  { m_axi_ddr1_ARCACHE CACHE 1 4 }  { m_axi_ddr1_ARPROT PROT 1 3 }  { m_axi_ddr1_ARQOS QOS 1 4 }  { m_axi_ddr1_ARREGION REGION 1 4 }  { m_axi_ddr1_ARUSER USER 1 1 }  { m_axi_ddr1_RVALID VALID 0 1 }  { m_axi_ddr1_RREADY READY 1 1 }  { m_axi_ddr1_RDATA DATA 0 128 }  { m_axi_ddr1_RLAST LAST 0 1 }  { m_axi_ddr1_RID ID 0 1 }  { m_axi_ddr1_RUSER USER 0 1 }  { m_axi_ddr1_RRESP RESP 0 2 }  { m_axi_ddr1_BVALID VALID 0 1 }  { m_axi_ddr1_BREADY READY 1 1 }  { m_axi_ddr1_BRESP RESP 0 2 }  { m_axi_ddr1_BID ID 0 1 }  { m_axi_ddr1_BUSER USER 0 1 } } }
	ddr2 { m_axi {  { m_axi_ddr2_AWVALID VALID 1 1 }  { m_axi_ddr2_AWREADY READY 0 1 }  { m_axi_ddr2_AWADDR ADDR 1 32 }  { m_axi_ddr2_AWID ID 1 1 }  { m_axi_ddr2_AWLEN LEN 1 8 }  { m_axi_ddr2_AWSIZE SIZE 1 3 }  { m_axi_ddr2_AWBURST BURST 1 2 }  { m_axi_ddr2_AWLOCK LOCK 1 2 }  { m_axi_ddr2_AWCACHE CACHE 1 4 }  { m_axi_ddr2_AWPROT PROT 1 3 }  { m_axi_ddr2_AWQOS QOS 1 4 }  { m_axi_ddr2_AWREGION REGION 1 4 }  { m_axi_ddr2_AWUSER USER 1 1 }  { m_axi_ddr2_WVALID VALID 1 1 }  { m_axi_ddr2_WREADY READY 0 1 }  { m_axi_ddr2_WDATA DATA 1 32 }  { m_axi_ddr2_WSTRB STRB 1 4 }  { m_axi_ddr2_WLAST LAST 1 1 }  { m_axi_ddr2_WID ID 1 1 }  { m_axi_ddr2_WUSER USER 1 1 }  { m_axi_ddr2_ARVALID VALID 1 1 }  { m_axi_ddr2_ARREADY READY 0 1 }  { m_axi_ddr2_ARADDR ADDR 1 32 }  { m_axi_ddr2_ARID ID 1 1 }  { m_axi_ddr2_ARLEN LEN 1 8 }  { m_axi_ddr2_ARSIZE SIZE 1 3 }  { m_axi_ddr2_ARBURST BURST 1 2 }  { m_axi_ddr2_ARLOCK LOCK 1 2 }  { m_axi_ddr2_ARCACHE CACHE 1 4 }  { m_axi_ddr2_ARPROT PROT 1 3 }  { m_axi_ddr2_ARQOS QOS 1 4 }  { m_axi_ddr2_ARREGION REGION 1 4 }  { m_axi_ddr2_ARUSER USER 1 1 }  { m_axi_ddr2_RVALID VALID 0 1 }  { m_axi_ddr2_RREADY READY 1 1 }  { m_axi_ddr2_RDATA DATA 0 32 }  { m_axi_ddr2_RLAST LAST 0 1 }  { m_axi_ddr2_RID ID 0 1 }  { m_axi_ddr2_RUSER USER 0 1 }  { m_axi_ddr2_RRESP RESP 0 2 }  { m_axi_ddr2_BVALID VALID 0 1 }  { m_axi_ddr2_BREADY READY 1 1 }  { m_axi_ddr2_BRESP RESP 0 2 }  { m_axi_ddr2_BID ID 0 1 }  { m_axi_ddr2_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ ddr0 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ ddr1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ ddr2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ddr0 1 }
	{ ddr1 1 }
	{ ddr2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ddr0 1 }
	{ ddr1 1 }
	{ ddr2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
