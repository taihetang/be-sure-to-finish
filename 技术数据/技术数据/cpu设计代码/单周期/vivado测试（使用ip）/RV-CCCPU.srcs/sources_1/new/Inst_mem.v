`include "define.v"
module Inst_Mem(
    input  wire [31:0] pc,
    output wire [31:0] inst
    );

    Inst_mem inst_Mem(
              .a(pc[15: 2]),
              .spo(inst)
    );
endmodule
