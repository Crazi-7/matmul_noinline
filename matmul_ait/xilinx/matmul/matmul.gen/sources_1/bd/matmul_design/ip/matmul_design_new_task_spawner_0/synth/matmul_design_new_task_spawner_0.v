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


// IP VLNV: bsc:ompss:newtask_spawner:2.2
// IP Revision: 0

(* X_CORE_INFO = "new_task_spawner_wrapper,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "matmul_design_new_task_spawner_0,new_task_spawner_wrapper,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module matmul_design_new_task_spawner_0 (
  clk,
  rstn,
  stream_in_tvalid,
  stream_in_tready,
  stream_in_tdest,
  stream_in_tdata,
  stream_in_tlast,
  stream_out_tvalid,
  stream_out_tready,
  stream_out_tdest,
  stream_out_tdata,
  stream_out_tlast,
  ack_in_tvalid,
  ack_in_tready,
  ack_in_tdata,
  ack_out_tvalid,
  ack_out_tready,
  ack_out_tdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF ack_in:ack_out:stream_in:stream_out, ASSOCIATED_RESET rstn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TVALID" *)
input wire stream_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TREADY" *)
output wire stream_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDEST" *)
input wire [1 : 0] stream_in_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDATA" *)
input wire [63 : 0] stream_in_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TLAST" *)
input wire stream_in_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TVALID" *)
output wire stream_out_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TREADY" *)
input wire stream_out_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDEST" *)
output wire [1 : 0] stream_out_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDATA" *)
output wire [63 : 0] stream_out_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TLAST" *)
output wire stream_out_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ack_in TVALID" *)
input wire ack_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ack_in TREADY" *)
output wire ack_in_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ack_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ack_in TDATA" *)
input wire [63 : 0] ack_in_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ack_out TVALID" *)
output wire ack_out_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ack_out TREADY" *)
input wire ack_out_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ack_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN matmul_design_clock_generator_0_clk_app, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ack_out TDATA" *)
output wire [7 : 0] ack_out_tdata;

  new_task_spawner_wrapper #(
    .MAX_ARGS_PER_TASK(15),
    .MAX_DEPS_PER_TASK(8),
    .MAX_COPS_PER_TASK(15),
    .MAX_OWNS_PER_TASK(8),
    .MAX_CLUSTER_SIZE(64),
    .BUFFER_LEN(2),
    .IMP(1'B0)
  ) inst (
    .clk(clk),
    .rstn(rstn),
    .ompif_rank(8'B0),
    .stream_in_tvalid(stream_in_tvalid),
    .stream_in_tready(stream_in_tready),
    .stream_in_tdest(stream_in_tdest),
    .stream_in_tdata(stream_in_tdata),
    .stream_in_tlast(stream_in_tlast),
    .stream_out_tvalid(stream_out_tvalid),
    .stream_out_tready(stream_out_tready),
    .stream_out_tdest(stream_out_tdest),
    .stream_out_tdata(stream_out_tdata),
    .stream_out_tlast(stream_out_tlast),
    .ack_in_tvalid(ack_in_tvalid),
    .ack_in_tready(ack_in_tready),
    .ack_in_tdata(ack_in_tdata),
    .ack_out_tvalid(ack_out_tvalid),
    .ack_out_tready(ack_out_tready),
    .ack_out_tdata(ack_out_tdata)
  );
endmodule
