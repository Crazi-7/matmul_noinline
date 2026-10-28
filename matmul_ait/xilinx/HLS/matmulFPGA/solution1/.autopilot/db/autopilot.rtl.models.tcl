set SynModuleInfo {
  {SRCNAME matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3 MODELNAME matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3 RTLNAME matmulFPGA_wrapper_matmulFPGA_Pipeline_VITIS_LOOP_74_1_VITIS_LOOP_75_2_VITIS_LOOP_77_3
    SUBMODULES {
      {MODELNAME matmulFPGA_wrapper_mul_26s_26s_26_1_1 RTLNAME matmulFPGA_wrapper_mul_26s_26s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matmulFPGA_wrapper_flow_control_loop_pipe_sequential_init RTLNAME matmulFPGA_wrapper_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matmulFPGA_wrapper_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matmulFPGA MODELNAME matmulFPGA RTLNAME matmulFPGA_wrapper_matmulFPGA
    SUBMODULES {
      {MODELNAME matmulFPGA_wrapper_mul_26ns_26ns_52_1_1 RTLNAME matmulFPGA_wrapper_mul_26ns_26ns_52_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matmulFPGA_wrapper_mul_26ns_52ns_78_2_1 RTLNAME matmulFPGA_wrapper_mul_26ns_52ns_78_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matmulFPGA_wrapper MODELNAME matmulFPGA_wrapper RTLNAME matmulFPGA_wrapper IS_TOP 1
    SUBMODULES {
      {MODELNAME matmulFPGA_wrapper_regslice_both RTLNAME matmulFPGA_wrapper_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME matmulFPGA_wrapper_regslice_both_U}
    }
  }
}
