# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler matmulBlock_wrapper_sparsemux_17_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
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
    id 180 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2 \
    op interface \
    ports { matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_address0 { O 7 vector } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_ce0 { O 1 bit } matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1 \
    op interface \
    ports { p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_address0 { O 7 vector } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_ce0 { O 1 bit } p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ19matmulBlock_wrapperRN3hls6streamI7ap_uintILi64EELi0EEERNS0_INS_4axisIS2_Lm1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name mcxx_memport \
    type other \
    dir O \
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
    id 179 \
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


