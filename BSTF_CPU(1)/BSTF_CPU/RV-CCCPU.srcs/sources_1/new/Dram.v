`include "define.v"
module Dram (
            input    wire        clk,
            input    wire        we,
            input    wire[31: 0] addr,
            input    wire[31: 0] wd,
            output   wire[31: 0] rd
        );

 data_mem RAM (
              .clk     (clk),
              .we      (we),
              .a       (addr[15: 2]),
              .d       (wd),
              .spo     (rd)
          );
          
 endmodule