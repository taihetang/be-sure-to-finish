// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll(clk_out1, clk_out2, locked, clk_in1_p, clk_in1_n);
  output clk_out1 /* synthesis syn_isclock = 1 */;
  output clk_out2 /* synthesis syn_isclock = 1 */;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
