set moduleName matmulFPGA_wrapper
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {matmulFPGA_wrapper}
set C_modelType { void 0 }
set C_modelArgList {
	{ mcxx_inPort int 64 regular {axi_s 0 volatile  { mcxx_inPort Data } }  }
	{ mcxx_outPort_V_data_V int 64 regular {axi_s 1 volatile  { mcxx_outPort Data } }  }
	{ mcxx_outPort_V_keep_V int 8 regular {axi_s 1 volatile  { mcxx_outPort Keep } }  }
	{ mcxx_outPort_V_strb_V int 8 regular {axi_s 1 volatile  { mcxx_outPort Strb } }  }
	{ mcxx_outPort_V_user_V int 1 regular {axi_s 1 volatile  { mcxx_outPort User } }  }
	{ mcxx_outPort_V_last_V int 1 regular {axi_s 1 volatile  { mcxx_outPort Last } }  }
	{ mcxx_outPort_V_id_V int 1 regular {axi_s 1 volatile  { mcxx_outPort ID } }  }
	{ mcxx_outPort_V_dest_V int 2 regular {axi_s 1 volatile  { mcxx_outPort Dest } }  }
	{ mcxx_spawnInPort int 8 regular {axi_s 0 volatile  { mcxx_spawnInPort Data } }  }
	{ mcxx_a int 32 unused {axi_master 0}  }
	{ mcxx_b int 32 unused {axi_master 0}  }
	{ mcxx_c int 32 unused {axi_master 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "mcxx_inPort", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mcxx_outPort_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_dest_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_spawnInPort", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mcxx_a", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mcxx_b", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mcxx_c", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 152
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ mcxx_inPort_TDATA sc_in sc_lv 64 signal 0 } 
	{ mcxx_inPort_TVALID sc_in sc_logic 1 invld 0 } 
	{ mcxx_inPort_TREADY sc_out sc_logic 1 inacc 0 } 
	{ mcxx_outPort_TDATA sc_out sc_lv 64 signal 1 } 
	{ mcxx_outPort_TVALID sc_out sc_logic 1 outvld 7 } 
	{ mcxx_outPort_TREADY sc_in sc_logic 1 outacc 7 } 
	{ mcxx_outPort_TKEEP sc_out sc_lv 8 signal 2 } 
	{ mcxx_outPort_TSTRB sc_out sc_lv 8 signal 3 } 
	{ mcxx_outPort_TUSER sc_out sc_lv 1 signal 4 } 
	{ mcxx_outPort_TLAST sc_out sc_lv 1 signal 5 } 
	{ mcxx_outPort_TID sc_out sc_lv 1 signal 6 } 
	{ mcxx_outPort_TDEST sc_out sc_lv 2 signal 7 } 
	{ mcxx_spawnInPort_TDATA sc_in sc_lv 8 signal 8 } 
	{ mcxx_spawnInPort_TVALID sc_in sc_logic 1 invld 8 } 
	{ mcxx_spawnInPort_TREADY sc_out sc_logic 1 inacc 8 } 
	{ m_axi_mcxx_a_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_mcxx_a_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_mcxx_a_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_mcxx_a_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_mcxx_a_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_mcxx_a_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_mcxx_a_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_mcxx_a_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_mcxx_a_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_mcxx_a_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_mcxx_a_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_mcxx_a_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_mcxx_a_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_mcxx_a_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_mcxx_a_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_mcxx_a_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_mcxx_a_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_mcxx_a_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_mcxx_a_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_mcxx_a_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_mcxx_a_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_mcxx_a_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_mcxx_a_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_mcxx_a_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_mcxx_a_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_mcxx_a_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_mcxx_b_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_mcxx_b_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_AWLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_mcxx_b_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_mcxx_b_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_mcxx_b_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_mcxx_b_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_mcxx_b_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_mcxx_b_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_mcxx_b_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_mcxx_b_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_mcxx_b_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_mcxx_b_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_mcxx_b_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_ARLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_mcxx_b_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_mcxx_b_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_mcxx_b_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_mcxx_b_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_mcxx_b_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_mcxx_b_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_mcxx_b_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_mcxx_b_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_mcxx_b_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_mcxx_b_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_mcxx_b_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_mcxx_b_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_mcxx_b_BUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_mcxx_c_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_mcxx_c_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_AWLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_mcxx_c_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_mcxx_c_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_mcxx_c_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_mcxx_c_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_mcxx_c_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_mcxx_c_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_mcxx_c_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_mcxx_c_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_WDATA sc_out sc_lv 32 signal 11 } 
	{ m_axi_mcxx_c_WSTRB sc_out sc_lv 4 signal 11 } 
	{ m_axi_mcxx_c_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_mcxx_c_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_ARLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_mcxx_c_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_mcxx_c_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_mcxx_c_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_mcxx_c_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_mcxx_c_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_mcxx_c_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_mcxx_c_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_mcxx_c_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_RDATA sc_in sc_lv 32 signal 11 } 
	{ m_axi_mcxx_c_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_mcxx_c_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_mcxx_c_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_mcxx_c_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_mcxx_c_BUSER sc_in sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "mcxx_inPort_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_inPort", "role": "TDATA" }} , 
 	{ "name": "mcxx_inPort_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "mcxx_inPort", "role": "TVALID" }} , 
 	{ "name": "mcxx_inPort_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "mcxx_inPort", "role": "TREADY" }} , 
 	{ "name": "mcxx_outPort_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_outPort_V_data_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mcxx_outPort_V_dest_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mcxx_outPort_V_dest_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_outPort_V_keep_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_outPort_V_strb_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_outPort_V_user_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_outPort_V_last_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_outPort_V_id_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_outPort_V_dest_V", "role": "default" }} , 
 	{ "name": "mcxx_spawnInPort_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_spawnInPort", "role": "TDATA" }} , 
 	{ "name": "mcxx_spawnInPort_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "mcxx_spawnInPort", "role": "TVALID" }} , 
 	{ "name": "mcxx_spawnInPort_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "mcxx_spawnInPort", "role": "TREADY" }} , 
 	{ "name": "m_axi_mcxx_a_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mcxx_a_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mcxx_a_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mcxx_a_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWID" }} , 
 	{ "name": "m_axi_mcxx_a_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mcxx_a_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mcxx_a_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mcxx_a_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mcxx_a_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mcxx_a_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mcxx_a_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mcxx_a_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mcxx_a_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mcxx_a_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "WVALID" }} , 
 	{ "name": "m_axi_mcxx_a_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "WREADY" }} , 
 	{ "name": "m_axi_mcxx_a_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_a", "role": "WDATA" }} , 
 	{ "name": "m_axi_mcxx_a_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_a", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mcxx_a_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "WLAST" }} , 
 	{ "name": "m_axi_mcxx_a_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "WID" }} , 
 	{ "name": "m_axi_mcxx_a_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "WUSER" }} , 
 	{ "name": "m_axi_mcxx_a_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mcxx_a_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mcxx_a_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mcxx_a_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARID" }} , 
 	{ "name": "m_axi_mcxx_a_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mcxx_a_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mcxx_a_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mcxx_a_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mcxx_a_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mcxx_a_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mcxx_a_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mcxx_a_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mcxx_a_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mcxx_a_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "RVALID" }} , 
 	{ "name": "m_axi_mcxx_a_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "RREADY" }} , 
 	{ "name": "m_axi_mcxx_a_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_a", "role": "RDATA" }} , 
 	{ "name": "m_axi_mcxx_a_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "RLAST" }} , 
 	{ "name": "m_axi_mcxx_a_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "RID" }} , 
 	{ "name": "m_axi_mcxx_a_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "RUSER" }} , 
 	{ "name": "m_axi_mcxx_a_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_a", "role": "RRESP" }} , 
 	{ "name": "m_axi_mcxx_a_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "BVALID" }} , 
 	{ "name": "m_axi_mcxx_a_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "BREADY" }} , 
 	{ "name": "m_axi_mcxx_a_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_a", "role": "BRESP" }} , 
 	{ "name": "m_axi_mcxx_a_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "BID" }} , 
 	{ "name": "m_axi_mcxx_a_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_a", "role": "BUSER" }} , 
 	{ "name": "m_axi_mcxx_b_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mcxx_b_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mcxx_b_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mcxx_b_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWID" }} , 
 	{ "name": "m_axi_mcxx_b_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mcxx_b_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mcxx_b_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mcxx_b_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mcxx_b_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mcxx_b_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mcxx_b_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mcxx_b_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mcxx_b_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mcxx_b_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "WVALID" }} , 
 	{ "name": "m_axi_mcxx_b_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "WREADY" }} , 
 	{ "name": "m_axi_mcxx_b_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_b", "role": "WDATA" }} , 
 	{ "name": "m_axi_mcxx_b_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_b", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mcxx_b_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "WLAST" }} , 
 	{ "name": "m_axi_mcxx_b_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "WID" }} , 
 	{ "name": "m_axi_mcxx_b_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "WUSER" }} , 
 	{ "name": "m_axi_mcxx_b_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mcxx_b_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mcxx_b_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mcxx_b_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARID" }} , 
 	{ "name": "m_axi_mcxx_b_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mcxx_b_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mcxx_b_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mcxx_b_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mcxx_b_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mcxx_b_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mcxx_b_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mcxx_b_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mcxx_b_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mcxx_b_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "RVALID" }} , 
 	{ "name": "m_axi_mcxx_b_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "RREADY" }} , 
 	{ "name": "m_axi_mcxx_b_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_b", "role": "RDATA" }} , 
 	{ "name": "m_axi_mcxx_b_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "RLAST" }} , 
 	{ "name": "m_axi_mcxx_b_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "RID" }} , 
 	{ "name": "m_axi_mcxx_b_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "RUSER" }} , 
 	{ "name": "m_axi_mcxx_b_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_b", "role": "RRESP" }} , 
 	{ "name": "m_axi_mcxx_b_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "BVALID" }} , 
 	{ "name": "m_axi_mcxx_b_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "BREADY" }} , 
 	{ "name": "m_axi_mcxx_b_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_b", "role": "BRESP" }} , 
 	{ "name": "m_axi_mcxx_b_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "BID" }} , 
 	{ "name": "m_axi_mcxx_b_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_b", "role": "BUSER" }} , 
 	{ "name": "m_axi_mcxx_c_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mcxx_c_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mcxx_c_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mcxx_c_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWID" }} , 
 	{ "name": "m_axi_mcxx_c_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mcxx_c_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mcxx_c_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mcxx_c_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mcxx_c_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mcxx_c_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mcxx_c_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mcxx_c_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mcxx_c_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mcxx_c_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "WVALID" }} , 
 	{ "name": "m_axi_mcxx_c_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "WREADY" }} , 
 	{ "name": "m_axi_mcxx_c_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_c", "role": "WDATA" }} , 
 	{ "name": "m_axi_mcxx_c_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_c", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mcxx_c_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "WLAST" }} , 
 	{ "name": "m_axi_mcxx_c_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "WID" }} , 
 	{ "name": "m_axi_mcxx_c_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "WUSER" }} , 
 	{ "name": "m_axi_mcxx_c_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mcxx_c_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mcxx_c_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mcxx_c_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARID" }} , 
 	{ "name": "m_axi_mcxx_c_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mcxx_c_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mcxx_c_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mcxx_c_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mcxx_c_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mcxx_c_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mcxx_c_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mcxx_c_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mcxx_c_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mcxx_c_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "RVALID" }} , 
 	{ "name": "m_axi_mcxx_c_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "RREADY" }} , 
 	{ "name": "m_axi_mcxx_c_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_c", "role": "RDATA" }} , 
 	{ "name": "m_axi_mcxx_c_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "RLAST" }} , 
 	{ "name": "m_axi_mcxx_c_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "RID" }} , 
 	{ "name": "m_axi_mcxx_c_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "RUSER" }} , 
 	{ "name": "m_axi_mcxx_c_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_c", "role": "RRESP" }} , 
 	{ "name": "m_axi_mcxx_c_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "BVALID" }} , 
 	{ "name": "m_axi_mcxx_c_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "BREADY" }} , 
 	{ "name": "m_axi_mcxx_c_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_c", "role": "BRESP" }} , 
 	{ "name": "m_axi_mcxx_c_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "BID" }} , 
 	{ "name": "m_axi_mcxx_c_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_c", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "matmulFPGA_wrapper",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mcxx_inPort", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mcxx_inPort_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mcxx_outPort_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"BlockSignal" : [
					{"Name" : "mcxx_outPort_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_outPort_V_data_V", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_outPort_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_outPort_V_keep_V", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_outPort_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_outPort_V_strb_V", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_outPort_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_outPort_V_user_V", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_outPort_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_outPort_V_last_V", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_outPort_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_outPort_V_id_V", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_outPort_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_outPort_V_dest_V", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_spawnInPort", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "mcxx_spawnInPort", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "mcxx_a", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "mcxx_b", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "mcxx_c", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "p_mcxx_taskId", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmulFPGA_fu_135", "Port" : "p_mcxx_taskId", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmulFPGA_fu_135", "Parent" : "0", "Child" : ["2", "5", "6"],
		"CDFG" : "matmulFPGA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_val_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_val_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_val_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "msize", "Type" : "None", "Direction" : "I"},
			{"Name" : "mcxx_spawnInPort", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mcxx_spawnInPort_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mcxx_outPort_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"BlockSignal" : [
					{"Name" : "mcxx_outPort_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Port" : "mcxx_outPort_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mcxx_outPort_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Port" : "mcxx_outPort_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mcxx_outPort_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Port" : "mcxx_outPort_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mcxx_outPort_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Port" : "mcxx_outPort_V_user_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mcxx_outPort_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Port" : "mcxx_outPort_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mcxx_outPort_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Port" : "mcxx_outPort_V_id_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mcxx_outPort_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Port" : "mcxx_outPort_V_dest_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_mcxx_taskId", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulFPGA_fu_135.grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131", "Parent" : "1", "Child" : ["3", "4"],
		"CDFG" : "matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "div_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_val_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_val_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_val_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "mcxx_outPort_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort",
				"BlockSignal" : [
					{"Name" : "mcxx_outPort_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mcxx_outPort_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "axis_word_data", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matmulFPGA_fu_135.grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131.mul_26s_26s_26_1_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matmulFPGA_fu_135.grp_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3_fu_131.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulFPGA_fu_135.mul_26ns_26ns_52_1_1_U18", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulFPGA_fu_135.mul_26ns_52ns_78_2_1_U19", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_inPort_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_data_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_keep_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_strb_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_user_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_last_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_id_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_dest_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_spawnInPort_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matmulFPGA_wrapper {
		mcxx_inPort {Type I LastRead 10 FirstWrite -1}
		mcxx_outPort_V_data_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_keep_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_strb_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_user_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_last_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_id_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_dest_V {Type O LastRead -1 FirstWrite 2}
		mcxx_spawnInPort {Type I LastRead 7 FirstWrite -1}
		mcxx_a {Type I LastRead -1 FirstWrite -1}
		mcxx_b {Type I LastRead -1 FirstWrite -1}
		mcxx_c {Type I LastRead -1 FirstWrite -1}
		p_mcxx_taskId {Type IO LastRead -1 FirstWrite -1}}
	matmulFPGA {
		a_val_val {Type I LastRead 2 FirstWrite -1}
		b_val_val {Type I LastRead 2 FirstWrite -1}
		c_val_val {Type I LastRead 2 FirstWrite -1}
		msize {Type I LastRead 0 FirstWrite -1}
		mcxx_spawnInPort {Type I LastRead 7 FirstWrite -1}
		mcxx_outPort_V_data_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_keep_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_strb_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_user_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_last_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_id_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_dest_V {Type O LastRead -1 FirstWrite 2}
		p_mcxx_taskId {Type I LastRead 3 FirstWrite -1}}
	matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3 {
		bound4 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		div_cast {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		a_val_val {Type I LastRead 0 FirstWrite -1}
		b_val_val {Type I LastRead 0 FirstWrite -1}
		c_val_val {Type I LastRead 0 FirstWrite -1}
		mcxx_outPort_V_data_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_keep_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_strb_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_user_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_last_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_id_V {Type O LastRead -1 FirstWrite 2}
		mcxx_outPort_V_dest_V {Type O LastRead -1 FirstWrite 2}
		axis_word_data {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mcxx_inPort { axis {  { mcxx_inPort_TDATA in_data 0 64 }  { mcxx_inPort_TVALID in_vld 0 1 }  { mcxx_inPort_TREADY in_acc 1 1 } } }
	mcxx_outPort_V_data_V { axis {  { mcxx_outPort_TDATA out_data 1 64 } } }
	mcxx_outPort_V_keep_V { axis {  { mcxx_outPort_TKEEP out_data 1 8 } } }
	mcxx_outPort_V_strb_V { axis {  { mcxx_outPort_TSTRB out_data 1 8 } } }
	mcxx_outPort_V_user_V { axis {  { mcxx_outPort_TUSER out_data 1 1 } } }
	mcxx_outPort_V_last_V { axis {  { mcxx_outPort_TLAST out_data 1 1 } } }
	mcxx_outPort_V_id_V { axis {  { mcxx_outPort_TID out_data 1 1 } } }
	mcxx_outPort_V_dest_V { axis {  { mcxx_outPort_TVALID out_vld 1 1 }  { mcxx_outPort_TREADY out_acc 0 1 }  { mcxx_outPort_TDEST out_data 1 2 } } }
	mcxx_spawnInPort { axis {  { mcxx_spawnInPort_TDATA in_data 0 8 }  { mcxx_spawnInPort_TVALID in_vld 0 1 }  { mcxx_spawnInPort_TREADY in_acc 1 1 } } }
	mcxx_a { m_axi {  { m_axi_mcxx_a_AWVALID VALID 1 1 }  { m_axi_mcxx_a_AWREADY READY 0 1 }  { m_axi_mcxx_a_AWADDR ADDR 1 64 }  { m_axi_mcxx_a_AWID ID 1 1 }  { m_axi_mcxx_a_AWLEN SIZE 1 8 }  { m_axi_mcxx_a_AWSIZE BURST 1 3 }  { m_axi_mcxx_a_AWBURST LOCK 1 2 }  { m_axi_mcxx_a_AWLOCK CACHE 1 2 }  { m_axi_mcxx_a_AWCACHE PROT 1 4 }  { m_axi_mcxx_a_AWPROT QOS 1 3 }  { m_axi_mcxx_a_AWQOS REGION 1 4 }  { m_axi_mcxx_a_AWREGION USER 1 4 }  { m_axi_mcxx_a_AWUSER DATA 1 1 }  { m_axi_mcxx_a_WVALID VALID 1 1 }  { m_axi_mcxx_a_WREADY READY 0 1 }  { m_axi_mcxx_a_WDATA FIFONUM 1 32 }  { m_axi_mcxx_a_WSTRB STRB 1 4 }  { m_axi_mcxx_a_WLAST LAST 1 1 }  { m_axi_mcxx_a_WID ID 1 1 }  { m_axi_mcxx_a_WUSER DATA 1 1 }  { m_axi_mcxx_a_ARVALID VALID 1 1 }  { m_axi_mcxx_a_ARREADY READY 0 1 }  { m_axi_mcxx_a_ARADDR ADDR 1 64 }  { m_axi_mcxx_a_ARID ID 1 1 }  { m_axi_mcxx_a_ARLEN SIZE 1 8 }  { m_axi_mcxx_a_ARSIZE BURST 1 3 }  { m_axi_mcxx_a_ARBURST LOCK 1 2 }  { m_axi_mcxx_a_ARLOCK CACHE 1 2 }  { m_axi_mcxx_a_ARCACHE PROT 1 4 }  { m_axi_mcxx_a_ARPROT QOS 1 3 }  { m_axi_mcxx_a_ARQOS REGION 1 4 }  { m_axi_mcxx_a_ARREGION USER 1 4 }  { m_axi_mcxx_a_ARUSER DATA 1 1 }  { m_axi_mcxx_a_RVALID VALID 0 1 }  { m_axi_mcxx_a_RREADY READY 1 1 }  { m_axi_mcxx_a_RDATA FIFONUM 0 32 }  { m_axi_mcxx_a_RLAST LAST 0 1 }  { m_axi_mcxx_a_RID ID 0 1 }  { m_axi_mcxx_a_RUSER DATA 0 1 }  { m_axi_mcxx_a_RRESP RESP 0 2 }  { m_axi_mcxx_a_BVALID VALID 0 1 }  { m_axi_mcxx_a_BREADY READY 1 1 }  { m_axi_mcxx_a_BRESP RESP 0 2 }  { m_axi_mcxx_a_BID ID 0 1 }  { m_axi_mcxx_a_BUSER DATA 0 1 } } }
	mcxx_b { m_axi {  { m_axi_mcxx_b_AWVALID VALID 1 1 }  { m_axi_mcxx_b_AWREADY READY 0 1 }  { m_axi_mcxx_b_AWADDR ADDR 1 64 }  { m_axi_mcxx_b_AWID ID 1 1 }  { m_axi_mcxx_b_AWLEN SIZE 1 8 }  { m_axi_mcxx_b_AWSIZE BURST 1 3 }  { m_axi_mcxx_b_AWBURST LOCK 1 2 }  { m_axi_mcxx_b_AWLOCK CACHE 1 2 }  { m_axi_mcxx_b_AWCACHE PROT 1 4 }  { m_axi_mcxx_b_AWPROT QOS 1 3 }  { m_axi_mcxx_b_AWQOS REGION 1 4 }  { m_axi_mcxx_b_AWREGION USER 1 4 }  { m_axi_mcxx_b_AWUSER DATA 1 1 }  { m_axi_mcxx_b_WVALID VALID 1 1 }  { m_axi_mcxx_b_WREADY READY 0 1 }  { m_axi_mcxx_b_WDATA FIFONUM 1 32 }  { m_axi_mcxx_b_WSTRB STRB 1 4 }  { m_axi_mcxx_b_WLAST LAST 1 1 }  { m_axi_mcxx_b_WID ID 1 1 }  { m_axi_mcxx_b_WUSER DATA 1 1 }  { m_axi_mcxx_b_ARVALID VALID 1 1 }  { m_axi_mcxx_b_ARREADY READY 0 1 }  { m_axi_mcxx_b_ARADDR ADDR 1 64 }  { m_axi_mcxx_b_ARID ID 1 1 }  { m_axi_mcxx_b_ARLEN SIZE 1 8 }  { m_axi_mcxx_b_ARSIZE BURST 1 3 }  { m_axi_mcxx_b_ARBURST LOCK 1 2 }  { m_axi_mcxx_b_ARLOCK CACHE 1 2 }  { m_axi_mcxx_b_ARCACHE PROT 1 4 }  { m_axi_mcxx_b_ARPROT QOS 1 3 }  { m_axi_mcxx_b_ARQOS REGION 1 4 }  { m_axi_mcxx_b_ARREGION USER 1 4 }  { m_axi_mcxx_b_ARUSER DATA 1 1 }  { m_axi_mcxx_b_RVALID VALID 0 1 }  { m_axi_mcxx_b_RREADY READY 1 1 }  { m_axi_mcxx_b_RDATA FIFONUM 0 32 }  { m_axi_mcxx_b_RLAST LAST 0 1 }  { m_axi_mcxx_b_RID ID 0 1 }  { m_axi_mcxx_b_RUSER DATA 0 1 }  { m_axi_mcxx_b_RRESP RESP 0 2 }  { m_axi_mcxx_b_BVALID VALID 0 1 }  { m_axi_mcxx_b_BREADY READY 1 1 }  { m_axi_mcxx_b_BRESP RESP 0 2 }  { m_axi_mcxx_b_BID ID 0 1 }  { m_axi_mcxx_b_BUSER DATA 0 1 } } }
	mcxx_c { m_axi {  { m_axi_mcxx_c_AWVALID VALID 1 1 }  { m_axi_mcxx_c_AWREADY READY 0 1 }  { m_axi_mcxx_c_AWADDR ADDR 1 64 }  { m_axi_mcxx_c_AWID ID 1 1 }  { m_axi_mcxx_c_AWLEN SIZE 1 8 }  { m_axi_mcxx_c_AWSIZE BURST 1 3 }  { m_axi_mcxx_c_AWBURST LOCK 1 2 }  { m_axi_mcxx_c_AWLOCK CACHE 1 2 }  { m_axi_mcxx_c_AWCACHE PROT 1 4 }  { m_axi_mcxx_c_AWPROT QOS 1 3 }  { m_axi_mcxx_c_AWQOS REGION 1 4 }  { m_axi_mcxx_c_AWREGION USER 1 4 }  { m_axi_mcxx_c_AWUSER DATA 1 1 }  { m_axi_mcxx_c_WVALID VALID 1 1 }  { m_axi_mcxx_c_WREADY READY 0 1 }  { m_axi_mcxx_c_WDATA FIFONUM 1 32 }  { m_axi_mcxx_c_WSTRB STRB 1 4 }  { m_axi_mcxx_c_WLAST LAST 1 1 }  { m_axi_mcxx_c_WID ID 1 1 }  { m_axi_mcxx_c_WUSER DATA 1 1 }  { m_axi_mcxx_c_ARVALID VALID 1 1 }  { m_axi_mcxx_c_ARREADY READY 0 1 }  { m_axi_mcxx_c_ARADDR ADDR 1 64 }  { m_axi_mcxx_c_ARID ID 1 1 }  { m_axi_mcxx_c_ARLEN SIZE 1 8 }  { m_axi_mcxx_c_ARSIZE BURST 1 3 }  { m_axi_mcxx_c_ARBURST LOCK 1 2 }  { m_axi_mcxx_c_ARLOCK CACHE 1 2 }  { m_axi_mcxx_c_ARCACHE PROT 1 4 }  { m_axi_mcxx_c_ARPROT QOS 1 3 }  { m_axi_mcxx_c_ARQOS REGION 1 4 }  { m_axi_mcxx_c_ARREGION USER 1 4 }  { m_axi_mcxx_c_ARUSER DATA 1 1 }  { m_axi_mcxx_c_RVALID VALID 0 1 }  { m_axi_mcxx_c_RREADY READY 1 1 }  { m_axi_mcxx_c_RDATA FIFONUM 0 32 }  { m_axi_mcxx_c_RLAST LAST 0 1 }  { m_axi_mcxx_c_RID ID 0 1 }  { m_axi_mcxx_c_RUSER DATA 0 1 }  { m_axi_mcxx_c_RRESP RESP 0 2 }  { m_axi_mcxx_c_BVALID VALID 0 1 }  { m_axi_mcxx_c_BREADY READY 1 1 }  { m_axi_mcxx_c_BRESP RESP 0 2 }  { m_axi_mcxx_c_BID ID 0 1 }  { m_axi_mcxx_c_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict mcxx_a {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict mcxx_b {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict mcxx_c {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mcxx_a 1 }
	{ mcxx_b 1 }
	{ mcxx_c 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mcxx_a 1 }
	{ mcxx_b 1 }
	{ mcxx_c 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
