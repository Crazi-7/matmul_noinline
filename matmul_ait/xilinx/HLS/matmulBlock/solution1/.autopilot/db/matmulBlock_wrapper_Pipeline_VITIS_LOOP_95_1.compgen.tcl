# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address0 { O 11 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address1 { O 11 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address0 { O 11 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address1 { O 11 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name mcxx_memport \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mcxx_memport \
    op interface \
    ports { m_axi_mcxx_memport_AWVALID { O 1 bit } m_axi_mcxx_memport_AWREADY { I 1 bit } m_axi_mcxx_memport_AWADDR { O 64 vector } m_axi_mcxx_memport_AWID { O 1 vector } m_axi_mcxx_memport_AWLEN { O 32 vector } m_axi_mcxx_memport_AWSIZE { O 3 vector } m_axi_mcxx_memport_AWBURST { O 2 vector } m_axi_mcxx_memport_AWLOCK { O 2 vector } m_axi_mcxx_memport_AWCACHE { O 4 vector } m_axi_mcxx_memport_AWPROT { O 3 vector } m_axi_mcxx_memport_AWQOS { O 4 vector } m_axi_mcxx_memport_AWREGION { O 4 vector } m_axi_mcxx_memport_AWUSER { O 1 vector } m_axi_mcxx_memport_WVALID { O 1 bit } m_axi_mcxx_memport_WREADY { I 1 bit } m_axi_mcxx_memport_WDATA { O 128 vector } m_axi_mcxx_memport_WSTRB { O 16 vector } m_axi_mcxx_memport_WLAST { O 1 bit } m_axi_mcxx_memport_WID { O 1 vector } m_axi_mcxx_memport_WUSER { O 1 vector } m_axi_mcxx_memport_ARVALID { O 1 bit } m_axi_mcxx_memport_ARREADY { I 1 bit } m_axi_mcxx_memport_ARADDR { O 64 vector } m_axi_mcxx_memport_ARID { O 1 vector } m_axi_mcxx_memport_ARLEN { O 32 vector } m_axi_mcxx_memport_ARSIZE { O 3 vector } m_axi_mcxx_memport_ARBURST { O 2 vector } m_axi_mcxx_memport_ARLOCK { O 2 vector } m_axi_mcxx_memport_ARCACHE { O 4 vector } m_axi_mcxx_memport_ARPROT { O 3 vector } m_axi_mcxx_memport_ARQOS { O 4 vector } m_axi_mcxx_memport_ARREGION { O 4 vector } m_axi_mcxx_memport_ARUSER { O 1 vector } m_axi_mcxx_memport_RVALID { I 1 bit } m_axi_mcxx_memport_RREADY { O 1 bit } m_axi_mcxx_memport_RDATA { I 128 vector } m_axi_mcxx_memport_RLAST { I 1 bit } m_axi_mcxx_memport_RID { I 1 vector } m_axi_mcxx_memport_RFIFONUM { I 9 vector } m_axi_mcxx_memport_RUSER { I 1 vector } m_axi_mcxx_memport_RRESP { I 2 vector } m_axi_mcxx_memport_BVALID { I 1 bit } m_axi_mcxx_memport_BREADY { O 1 bit } m_axi_mcxx_memport_BRESP { I 2 vector } m_axi_mcxx_memport_BID { I 1 vector } m_axi_mcxx_memport_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 60 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName matmulBlock_wrapper_flow_control_loop_pipe_sequential_init_U
set CompName matmulBlock_wrapper_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix matmulBlock_wrapper_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


