# This script segment is generated automatically by AutoPilot

set name matmulBlock_wrapper_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name matmulBlock_wrapper_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


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
    id 123 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8_address0 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8_address1 { O 8 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27_address0 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27_address1 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26_address0 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26_address1 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25_address0 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25_address1 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24_address0 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24_address1 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23_address0 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23_address1 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22_address0 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22_address1 { O 8 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_address0 { O 11 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a \
    reset_level 1 \
    sync_rst false \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_address0 { O 11 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_we0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_d0 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_q0 { I 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_address1 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_ce1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_we1 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_d1 { O 32 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_we0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_d0 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_q0 { I 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_address1 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_ce1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_we1 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_d1 { O 32 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst false \
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
    sync_rst false \
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
    sync_rst false \
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


