// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:bsc_axiu_axis_tid_demux:1.0
// IP Revision: 1

(* X_CORE_INFO = "bsc_axiu_axis_tid_demux,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "matmul_design_axis_tid_demux_0,bsc_axiu_axis_tid_demux,{}" *)
(* CORE_GENERATION_INFO = "matmul_design_axis_tid_demux_0,bsc_axiu_axis_tid_demux,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=bsc_axiu_axis_tid_demux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module matmul_design_axis_tid_demux_0 (
  clk,
  s_tdata,
  s_tid,
  s_tvalid,
  m0_tready,
  m1_tready,
  m0_tdata,
  m1_tdata,
  m0_tvalid,
  m1_tvalid,
  s_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m0:m1:s, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *)
input wire [63 : 0] s_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TID" *)
input wire [0 : 0] s_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *)
input wire s_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0 TREADY" *)
input wire m0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m1 TREADY" *)
input wire m1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0 TDATA" *)
output wire [63 : 0] m0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m1 TDATA" *)
output wire [63 : 0] m1_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0 TVALID" *)
output wire m0_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m1, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m1 TVALID" *)
output wire m1_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TREADY" *)
output wire s_tready;

  bsc_axiu_axis_tid_demux inst (
    .clk(clk),
    .s_tdata(s_tdata),
    .s_tid(s_tid),
    .s_tvalid(s_tvalid),
    .m0_tready(m0_tready),
    .m1_tready(m1_tready),
    .m0_tdata(m0_tdata),
    .m1_tdata(m1_tdata),
    .m0_tvalid(m0_tvalid),
    .m1_tvalid(m1_tvalid),
    .s_tready(s_tready)
  );
endmodule
