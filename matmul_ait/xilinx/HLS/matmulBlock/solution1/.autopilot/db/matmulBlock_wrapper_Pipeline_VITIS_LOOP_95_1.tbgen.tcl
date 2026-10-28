set moduleName matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ mcxx_memport int 128 regular {axi_master 0}  }
	{ empty int 60 regular  }
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 float 32 regular {array 2048 { 0 0 } 0 1 } {global 1}  }
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a float 32 regular {array 2048 { 0 0 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "mcxx_memport", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_mcxx_memport_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mcxx_memport_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mcxx_memport_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mcxx_memport_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mcxx_memport_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mcxx_memport_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mcxx_memport_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mcxx_memport_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mcxx_memport_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mcxx_memport_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_mcxx_memport_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_mcxx_memport_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mcxx_memport_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mcxx_memport_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mcxx_memport_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mcxx_memport_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mcxx_memport_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mcxx_memport_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mcxx_memport_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mcxx_memport_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mcxx_memport_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_mcxx_memport_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_mcxx_memport_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mcxx_memport_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mcxx_memport_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mcxx_memport_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mcxx_memport_BUSER sc_in sc_lv 1 signal 0 } 
	{ empty sc_in sc_lv 60 signal 1 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address0 sc_out sc_lv 11 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we0 sc_out sc_logic 1 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d0 sc_out sc_lv 32 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address1 sc_out sc_lv 11 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we1 sc_out sc_logic 1 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d1 sc_out sc_lv 32 signal 2 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address0 sc_out sc_lv 11 signal 3 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce0 sc_out sc_logic 1 signal 3 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we0 sc_out sc_logic 1 signal 3 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d0 sc_out sc_lv 32 signal 3 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address1 sc_out sc_lv 11 signal 3 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce1 sc_out sc_logic 1 signal 3 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we1 sc_out sc_logic 1 signal 3 } 
	{ matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d1 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_mcxx_memport_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mcxx_memport_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mcxx_memport_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mcxx_memport_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWID" }} , 
 	{ "name": "m_axi_mcxx_memport_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_mcxx_memport_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_mcxx_memport_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_mcxx_memport_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RUSER" }} , 
 	{ "name": "m_axi_mcxx_memport_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "RRESP" }} , 
 	{ "name": "m_axi_mcxx_memport_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BVALID" }} , 
 	{ "name": "m_axi_mcxx_memport_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BREADY" }} , 
 	{ "name": "m_axi_mcxx_memport_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BRESP" }} , 
 	{ "name": "m_axi_mcxx_memport_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BID" }} , 
 	{ "name": "m_axi_mcxx_memport_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_memport", "role": "BUSER" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "address0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "ce0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "we0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "d0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "address1" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "ce1" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "we1" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1", "role": "d1" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "address0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "ce0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "we0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "d0" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "address1" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "ce1" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "we1" }} , 
 	{ "name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1 {
		mcxx_memport {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 {Type O LastRead -1 FirstWrite 2}
		matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1027", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_mcxx_memport_AWVALID VALID 1 1 }  { m_axi_mcxx_memport_AWREADY READY 0 1 }  { m_axi_mcxx_memport_AWADDR ADDR 1 64 }  { m_axi_mcxx_memport_AWID ID 1 1 }  { m_axi_mcxx_memport_AWLEN SIZE 1 32 }  { m_axi_mcxx_memport_AWSIZE BURST 1 3 }  { m_axi_mcxx_memport_AWBURST LOCK 1 2 }  { m_axi_mcxx_memport_AWLOCK CACHE 1 2 }  { m_axi_mcxx_memport_AWCACHE PROT 1 4 }  { m_axi_mcxx_memport_AWPROT QOS 1 3 }  { m_axi_mcxx_memport_AWQOS REGION 1 4 }  { m_axi_mcxx_memport_AWREGION USER 1 4 }  { m_axi_mcxx_memport_AWUSER DATA 1 1 }  { m_axi_mcxx_memport_WVALID VALID 1 1 }  { m_axi_mcxx_memport_WREADY READY 0 1 }  { m_axi_mcxx_memport_WDATA FIFONUM 1 128 }  { m_axi_mcxx_memport_WSTRB STRB 1 16 }  { m_axi_mcxx_memport_WLAST LAST 1 1 }  { m_axi_mcxx_memport_WID ID 1 1 }  { m_axi_mcxx_memport_WUSER DATA 1 1 }  { m_axi_mcxx_memport_ARVALID VALID 1 1 }  { m_axi_mcxx_memport_ARREADY READY 0 1 }  { m_axi_mcxx_memport_ARADDR ADDR 1 64 }  { m_axi_mcxx_memport_ARID ID 1 1 }  { m_axi_mcxx_memport_ARLEN SIZE 1 32 }  { m_axi_mcxx_memport_ARSIZE BURST 1 3 }  { m_axi_mcxx_memport_ARBURST LOCK 1 2 }  { m_axi_mcxx_memport_ARLOCK CACHE 1 2 }  { m_axi_mcxx_memport_ARCACHE PROT 1 4 }  { m_axi_mcxx_memport_ARPROT QOS 1 3 }  { m_axi_mcxx_memport_ARQOS REGION 1 4 }  { m_axi_mcxx_memport_ARREGION USER 1 4 }  { m_axi_mcxx_memport_ARUSER DATA 1 1 }  { m_axi_mcxx_memport_RVALID VALID 0 1 }  { m_axi_mcxx_memport_RREADY READY 1 1 }  { m_axi_mcxx_memport_RDATA FIFONUM 0 128 }  { m_axi_mcxx_memport_RLAST LAST 0 1 }  { m_axi_mcxx_memport_RID ID 0 1 }  { m_axi_mcxx_memport_RFIFONUM LEN 0 9 }  { m_axi_mcxx_memport_RUSER DATA 0 1 }  { m_axi_mcxx_memport_RRESP RESP 0 2 }  { m_axi_mcxx_memport_BVALID VALID 0 1 }  { m_axi_mcxx_memport_BREADY READY 1 1 }  { m_axi_mcxx_memport_BRESP RESP 0 2 }  { m_axi_mcxx_memport_BID ID 0 1 }  { m_axi_mcxx_memport_BUSER DATA 0 1 } } }
	empty { ap_none {  { empty in_data 0 60 } } }
	matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 { ap_memory {  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address0 mem_address 1 11 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce0 mem_ce 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we0 mem_we 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d0 mem_din 1 32 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address1 MemPortADDR2 1 11 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce1 MemPortCE2 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we1 MemPortWE2 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d1 MemPortDIN2 1 32 } } }
	matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a { ap_memory {  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address0 mem_address 1 11 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce0 mem_ce 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we0 mem_we 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d0 mem_din 1 32 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address1 MemPortADDR2 1 11 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce1 MemPortCE2 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we1 MemPortWE2 1 1 }  { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d1 MemPortDIN2 1 32 } } }
}
