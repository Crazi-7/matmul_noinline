set moduleName matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3
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
set C_modelName {matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound4 int 78 regular  }
	{ bound int 52 regular  }
	{ div_cast int 26 regular  }
	{ empty int 26 regular  }
	{ a_val_val int 64 regular  }
	{ b_val_val int 64 regular  }
	{ c_val_val int 64 regular  }
	{ mcxx_outPort_V_data_V int 64 regular {axi_s 1 volatile  { mcxx_outPort Data } }  }
	{ mcxx_outPort_V_keep_V int 8 regular {axi_s 1 volatile  { mcxx_outPort Keep } }  }
	{ mcxx_outPort_V_strb_V int 8 regular {axi_s 1 volatile  { mcxx_outPort Strb } }  }
	{ mcxx_outPort_V_user_V int 1 regular {axi_s 1 volatile  { mcxx_outPort User } }  }
	{ mcxx_outPort_V_last_V int 1 regular {axi_s 1 volatile  { mcxx_outPort Last } }  }
	{ mcxx_outPort_V_id_V int 1 regular {axi_s 1 volatile  { mcxx_outPort ID } }  }
	{ mcxx_outPort_V_dest_V int 2 regular {axi_s 1 volatile  { mcxx_outPort Dest } }  }
	{ axis_word_data int 64 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bound4", "interface" : "wire", "bitwidth" : 78, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 52, "direction" : "READONLY"} , 
 	{ "Name" : "div_cast", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "a_val_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b_val_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c_val_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mcxx_outPort_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mcxx_outPort_V_dest_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axis_word_data", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mcxx_outPort_TREADY sc_in sc_logic 1 outacc 7 } 
	{ bound4 sc_in sc_lv 78 signal 0 } 
	{ bound sc_in sc_lv 52 signal 1 } 
	{ div_cast sc_in sc_lv 26 signal 2 } 
	{ empty sc_in sc_lv 26 signal 3 } 
	{ a_val_val sc_in sc_lv 64 signal 4 } 
	{ b_val_val sc_in sc_lv 64 signal 5 } 
	{ c_val_val sc_in sc_lv 64 signal 6 } 
	{ mcxx_outPort_TDATA sc_out sc_lv 64 signal 7 } 
	{ mcxx_outPort_TVALID sc_out sc_logic 1 outvld 13 } 
	{ mcxx_outPort_TKEEP sc_out sc_lv 8 signal 8 } 
	{ mcxx_outPort_TSTRB sc_out sc_lv 8 signal 9 } 
	{ mcxx_outPort_TUSER sc_out sc_lv 1 signal 10 } 
	{ mcxx_outPort_TLAST sc_out sc_lv 1 signal 11 } 
	{ mcxx_outPort_TID sc_out sc_lv 1 signal 12 } 
	{ mcxx_outPort_TDEST sc_out sc_lv 2 signal 13 } 
	{ axis_word_data sc_in sc_lv 64 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mcxx_outPort_V_data_V", "role": "default" }} , 
 	{ "name": "bound4", "direction": "in", "datatype": "sc_lv", "bitwidth":78, "type": "signal", "bundle":{"name": "bound4", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":52, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "div_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "div_cast", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "a_val_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val_val", "role": "default" }} , 
 	{ "name": "b_val_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_val_val", "role": "default" }} , 
 	{ "name": "c_val_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_val_val", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mcxx_outPort_V_data_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mcxx_outPort_V_dest_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_outPort_V_keep_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mcxx_outPort_V_strb_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_outPort_V_user_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_outPort_V_last_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mcxx_outPort_V_id_V", "role": "default" }} , 
 	{ "name": "mcxx_outPort_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mcxx_outPort_V_dest_V", "role": "default" }} , 
 	{ "name": "axis_word_data", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axis_word_data", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_26_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound4 { ap_none {  { bound4 in_data 0 78 } } }
	bound { ap_none {  { bound in_data 0 52 } } }
	div_cast { ap_none {  { div_cast in_data 0 26 } } }
	empty { ap_none {  { empty in_data 0 26 } } }
	a_val_val { ap_none {  { a_val_val in_data 0 64 } } }
	b_val_val { ap_none {  { b_val_val in_data 0 64 } } }
	c_val_val { ap_none {  { c_val_val in_data 0 64 } } }
	mcxx_outPort_V_data_V { axis {  { mcxx_outPort_TREADY out_acc 0 1 }  { mcxx_outPort_TDATA out_data 1 64 } } }
	mcxx_outPort_V_keep_V { axis {  { mcxx_outPort_TKEEP out_data 1 8 } } }
	mcxx_outPort_V_strb_V { axis {  { mcxx_outPort_TSTRB out_data 1 8 } } }
	mcxx_outPort_V_user_V { axis {  { mcxx_outPort_TUSER out_data 1 1 } } }
	mcxx_outPort_V_last_V { axis {  { mcxx_outPort_TLAST out_data 1 1 } } }
	mcxx_outPort_V_id_V { axis {  { mcxx_outPort_TID out_data 1 1 } } }
	mcxx_outPort_V_dest_V { axis {  { mcxx_outPort_TVALID out_vld 1 1 }  { mcxx_outPort_TDEST out_data 1 2 } } }
	axis_word_data { ap_none {  { axis_word_data in_data 0 64 } } }
}
