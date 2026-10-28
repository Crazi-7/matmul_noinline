set SynModuleInfo {
  {SRCNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1 MODELNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1 RTLNAME matmulBlock_wrapper_matmulBlock_wrapper_Pipeline_VITIS_LOOP_95_1
    SUBMODULES {
      {MODELNAME matmulBlock_wrapper_flow_control_loop_pipe_sequential_init RTLNAME matmulBlock_wrapper_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matmulBlock_wrapper_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3 MODELNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3 RTLNAME matmulBlock_wrapper_matmulBlock_wrapper_Pipeline_VITIS_LOOP_107_3}
  {SRCNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5 MODELNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5 RTLNAME matmulBlock_wrapper_matmulBlock_wrapper_Pipeline_VITIS_LOOP_119_5}
  {SRCNAME matmulBlock MODELNAME matmulBlock RTLNAME matmulBlock_wrapper_matmulBlock
    SUBMODULES {
      {MODELNAME matmulBlock_wrapper_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME matmulBlock_wrapper_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME matmulBlock_wrapper_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME matmulBlock_wrapper_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7 MODELNAME matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7 RTLNAME matmulBlock_wrapper_matmulBlock_wrapper_Pipeline_VITIS_LOOP_132_7
    SUBMODULES {
      {MODELNAME matmulBlock_wrapper_sparsemux_17_3_32_1_1 RTLNAME matmulBlock_wrapper_sparsemux_17_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME matmulBlock_wrapper MODELNAME matmulBlock_wrapper RTLNAME matmulBlock_wrapper IS_TOP 1
    SUBMODULES {
      {MODELNAME matmulBlock_wrapper_matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_RAM_AUTO_1R1W RTLNAME matmulBlock_wrapper_matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_a_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmulBlock_wrapper_matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_RAM_AUTO_1R1W RTLNAME matmulBlock_wrapper_matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_b_9_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmulBlock_wrapper_matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_RAM_AUTO_1R1W RTLNAME matmulBlock_wrapper_matmulBlock_wrapper_stream_stream_axis_0_ap_uint_128_c_9_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmulBlock_wrapper_mcxx_memport_m_axi RTLNAME matmulBlock_wrapper_mcxx_memport_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matmulBlock_wrapper_regslice_both RTLNAME matmulBlock_wrapper_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME matmulBlock_wrapper_regslice_both_U}
    }
  }
}
