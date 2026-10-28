set moduleName matmulBlock_wrapper
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
set C_modelName {matmulBlock_wrapper}
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
	{ mcxx_memport int 128 regular {axi_master 2}  }
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
 	{ "Name" : "mcxx_memport", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 59
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
	{ m_axi_mcxx_memport_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_mcxx_memport_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_mcxx_memport_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_mcxx_memport_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_mcxx_memport_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_mcxx_memport_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_mcxx_memport_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_mcxx_memport_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_mcxx_memport_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_mcxx_memport_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_WDATA sc_out sc_lv 128 signal 8 } 
	{ m_axi_mcxx_memport_WSTRB sc_out sc_lv 16 signal 8 } 
	{ m_axi_mcxx_memport_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_mcxx_memport_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_mcxx_memport_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_mcxx_memport_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_mcxx_memport_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_mcxx_memport_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_mcxx_memport_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_mcxx_memport_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_mcxx_memport_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_mcxx_memport_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_RDATA sc_in sc_lv 128 signal 8 } 
	{ m_axi_mcxx_memport_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_mcxx_memport_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_mcxx_memport_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_mcxx_memport_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_mcxx_memport_BUSER sc_in sc_lv 1 signal 8 } 
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
 	{ "name": "m_axi_mcxx_memport_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mcxx_memport_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mcxx_memport_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mcxx_memport_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWID" }} , 
 	{ "name": "m_axi_mcxx_memport_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mcxx_memport_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mcxx_memport_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mcxx_memport_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mcxx_memport_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mcxx_memport_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mcxx_memport_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mcxx_memport_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mcxx_memport_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mcxx_memport_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "WVALID" }} , 
 	{ "name": "m_axi_mcxx_memport_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "WREADY" }} , 
 	{ "name": "m_axi_mcxx_memport_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "WDATA" }} , 
 	{ "name": "m_axi_mcxx_memport_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mcxx_memport_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "WLAST" }} , 
 	{ "name": "m_axi_mcxx_memport_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "WID" }} , 
 	{ "name": "m_axi_mcxx_memport_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "WUSER" }} , 
 	{ "name": "m_axi_mcxx_memport_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mcxx_memport_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mcxx_memport_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mcxx_memport_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARID" }} , 
 	{ "name": "m_axi_mcxx_memport_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mcxx_memport_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mcxx_memport_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mcxx_memport_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mcxx_memport_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mcxx_memport_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mcxx_memport_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mcxx_memport_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mcxx_memport_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mcxx_memport_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RVALID" }} , 
 	{ "name": "m_axi_mcxx_memport_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RREADY" }} , 
 	{ "name": "m_axi_mcxx_memport_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RDATA" }} , 
 	{ "name": "m_axi_mcxx_memport_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RLAST" }} , 
 	{ "name": "m_axi_mcxx_memport_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RID" }} , 
 	{ "name": "m_axi_mcxx_memport_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RUSER" }} , 
 	{ "name": "m_axi_mcxx_memport_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RRESP" }} , 
 	{ "name": "m_axi_mcxx_memport_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BVALID" }} , 
 	{ "name": "m_axi_mcxx_memport_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BREADY" }} , 
 	{ "name": "m_axi_mcxx_memport_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BRESP" }} , 
 	{ "name": "m_axi_mcxx_memport_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BID" }} , 
 	{ "name": "m_axi_mcxx_memport_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "53", "55", "57", "123", "129", "130", "131", "132", "133", "134", "135", "136", "137"],
		"CDFG" : "matmulBlock_wrapper",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8222", "EstimateLatencyMax" : "12362",
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
					{"Name" : "mcxx_outPort_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mcxx_outPort_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_outPort_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "mcxx_outPort"},
			{"Name" : "mcxx_memport", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "mcxx_memport_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mcxx_memport_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "mcxx_memport_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "mcxx_memport", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "51", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1_fu_278", "Port" : "mcxx_memport", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "mcxx_memport", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "mcxx_memport", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1_fu_278", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1_fu_278", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "57", "SubInstance" : "grp_matmulBlock_fu_399", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "123", "SubInstance" : "grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Port" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1", "Inst_start_state" : "43", "Inst_end_state" : "44"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1_fu_278", "Parent" : "0", "Child" : ["52"],
		"CDFG" : "matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mcxx_memport", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mcxx_memport_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289", "Parent" : "0", "Child" : ["54"],
		"CDFG" : "matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mcxx_memport", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mcxx_memport_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3_fu_289.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328", "Parent" : "0", "Child" : ["56"],
		"CDFG" : "matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mcxx_memport", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mcxx_memport_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_119_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5_fu_328.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399", "Parent" : "0", "Child" : ["58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122"],
		"CDFG" : "matmulBlock",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8203", "EstimateLatencyMax" : "8203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_1_VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U57", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U58", "Parent" : "57"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U59", "Parent" : "57"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U60", "Parent" : "57"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U61", "Parent" : "57"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U62", "Parent" : "57"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U63", "Parent" : "57"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U64", "Parent" : "57"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U65", "Parent" : "57"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U66", "Parent" : "57"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U67", "Parent" : "57"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U68", "Parent" : "57"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U69", "Parent" : "57"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U70", "Parent" : "57"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U71", "Parent" : "57"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U72", "Parent" : "57"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U73", "Parent" : "57"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U74", "Parent" : "57"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U75", "Parent" : "57"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U76", "Parent" : "57"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U77", "Parent" : "57"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U78", "Parent" : "57"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U79", "Parent" : "57"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U80", "Parent" : "57"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U81", "Parent" : "57"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U82", "Parent" : "57"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U83", "Parent" : "57"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U84", "Parent" : "57"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U85", "Parent" : "57"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U86", "Parent" : "57"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U87", "Parent" : "57"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fadd_32ns_32ns_32_5_full_dsp_1_U88", "Parent" : "57"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U89", "Parent" : "57"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U90", "Parent" : "57"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U91", "Parent" : "57"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U92", "Parent" : "57"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U93", "Parent" : "57"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U94", "Parent" : "57"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U95", "Parent" : "57"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U96", "Parent" : "57"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U97", "Parent" : "57"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "57"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U99", "Parent" : "57"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U100", "Parent" : "57"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U101", "Parent" : "57"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U102", "Parent" : "57"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U103", "Parent" : "57"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U104", "Parent" : "57"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U105", "Parent" : "57"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U106", "Parent" : "57"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U107", "Parent" : "57"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U108", "Parent" : "57"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U109", "Parent" : "57"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U110", "Parent" : "57"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U111", "Parent" : "57"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U112", "Parent" : "57"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U113", "Parent" : "57"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U114", "Parent" : "57"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U115", "Parent" : "57"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U116", "Parent" : "57"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U117", "Parent" : "57"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U118", "Parent" : "57"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U119", "Parent" : "57"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.fmul_32ns_32ns_32_4_max_dsp_1_U120", "Parent" : "57"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_fu_399.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503", "Parent" : "0", "Child" : ["124", "125", "126", "127", "128"],
		"CDFG" : "matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mcxx_memport", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mcxx_memport_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_132_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503.sparsemux_17_3_32_1_1_U173", "Parent" : "123"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503.sparsemux_17_3_32_1_1_U174", "Parent" : "123"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503.sparsemux_17_3_32_1_1_U175", "Parent" : "123"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503.sparsemux_17_3_32_1_1_U176", "Parent" : "123"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7_fu_503.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mcxx_memport_m_axi_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_inPort_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_data_V_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_keep_V_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_strb_V_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_user_V_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_last_V_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_id_V_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mcxx_outPort_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matmulBlock_wrapper {
		mcxx_inPort {Type I LastRead 8 FirstWrite -1}
		mcxx_outPort_V_data_V {Type O LastRead -1 FirstWrite 48}
		mcxx_outPort_V_keep_V {Type O LastRead -1 FirstWrite 48}
		mcxx_outPort_V_strb_V {Type O LastRead -1 FirstWrite 48}
		mcxx_outPort_V_user_V {Type O LastRead -1 FirstWrite 48}
		mcxx_outPort_V_last_V {Type O LastRead -1 FirstWrite 48}
		mcxx_outPort_V_id_V {Type O LastRead -1 FirstWrite 48}
		mcxx_outPort_V_dest_V {Type O LastRead -1 FirstWrite 48}
		mcxx_memport {Type IO LastRead 44 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 {Type IO LastRead -1 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 {Type IO LastRead -1 FirstWrite -1}}
	matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1 {
		mcxx_memport {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a {Type O LastRead -1 FirstWrite 2}}
	matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3 {
		mcxx_memport {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22 {Type O LastRead -1 FirstWrite 2}}
	matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5 {
		mcxx_memport {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 {Type O LastRead -1 FirstWrite 2}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 {Type O LastRead -1 FirstWrite 2}}
	matmulBlock {
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8 {Type I LastRead 2 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27 {Type I LastRead 2 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26 {Type I LastRead 2 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25 {Type I LastRead 2 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24 {Type I LastRead 2 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23 {Type I LastRead 2 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22 {Type I LastRead 2 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 {Type IO LastRead 6 FirstWrite 11}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 {Type IO LastRead 6 FirstWrite 11}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 {Type IO LastRead 6 FirstWrite 11}}
	matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7 {
		mcxx_memport {Type O LastRead -1 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 {Type I LastRead 0 FirstWrite -1}
		p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8222", "Max" : "12362"}
	, {"Name" : "Interval", "Min" : "8223", "Max" : "12363"}
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
	mcxx_memport { m_axi {  { m_axi_mcxx_memport_AWVALID VALID 1 1 }  { m_axi_mcxx_memport_AWREADY READY 0 1 }  { m_axi_mcxx_memport_AWADDR ADDR 1 64 }  { m_axi_mcxx_memport_AWID ID 1 1 }  { m_axi_mcxx_memport_AWLEN SIZE 1 8 }  { m_axi_mcxx_memport_AWSIZE BURST 1 3 }  { m_axi_mcxx_memport_AWBURST LOCK 1 2 }  { m_axi_mcxx_memport_AWLOCK CACHE 1 2 }  { m_axi_mcxx_memport_AWCACHE PROT 1 4 }  { m_axi_mcxx_memport_AWPROT QOS 1 3 }  { m_axi_mcxx_memport_AWQOS REGION 1 4 }  { m_axi_mcxx_memport_AWREGION USER 1 4 }  { m_axi_mcxx_memport_AWUSER DATA 1 1 }  { m_axi_mcxx_memport_WVALID VALID 1 1 }  { m_axi_mcxx_memport_WREADY READY 0 1 }  { m_axi_mcxx_memport_WDATA FIFONUM 1 128 }  { m_axi_mcxx_memport_WSTRB STRB 1 16 }  { m_axi_mcxx_memport_WLAST LAST 1 1 }  { m_axi_mcxx_memport_WID ID 1 1 }  { m_axi_mcxx_memport_WUSER DATA 1 1 }  { m_axi_mcxx_memport_ARVALID VALID 1 1 }  { m_axi_mcxx_memport_ARREADY READY 0 1 }  { m_axi_mcxx_memport_ARADDR ADDR 1 64 }  { m_axi_mcxx_memport_ARID ID 1 1 }  { m_axi_mcxx_memport_ARLEN SIZE 1 8 }  { m_axi_mcxx_memport_ARSIZE BURST 1 3 }  { m_axi_mcxx_memport_ARBURST LOCK 1 2 }  { m_axi_mcxx_memport_ARLOCK CACHE 1 2 }  { m_axi_mcxx_memport_ARCACHE PROT 1 4 }  { m_axi_mcxx_memport_ARPROT QOS 1 3 }  { m_axi_mcxx_memport_ARQOS REGION 1 4 }  { m_axi_mcxx_memport_ARREGION USER 1 4 }  { m_axi_mcxx_memport_ARUSER DATA 1 1 }  { m_axi_mcxx_memport_RVALID VALID 0 1 }  { m_axi_mcxx_memport_RREADY READY 1 1 }  { m_axi_mcxx_memport_RDATA FIFONUM 0 128 }  { m_axi_mcxx_memport_RLAST LAST 0 1 }  { m_axi_mcxx_memport_RID ID 0 1 }  { m_axi_mcxx_memport_RUSER DATA 0 1 }  { m_axi_mcxx_memport_RRESP RESP 0 2 }  { m_axi_mcxx_memport_BVALID VALID 0 1 }  { m_axi_mcxx_memport_BREADY READY 1 1 }  { m_axi_mcxx_memport_BRESP RESP 0 2 }  { m_axi_mcxx_memport_BID ID 0 1 }  { m_axi_mcxx_memport_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict mcxx_memport {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mcxx_memport 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mcxx_memport 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
