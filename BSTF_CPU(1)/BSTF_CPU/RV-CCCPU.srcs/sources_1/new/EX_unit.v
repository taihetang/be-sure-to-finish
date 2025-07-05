`include "define.v"
module EX_unit(
    input   wire    [31:0]      rd1,
    input   wire    [31:0]      rd2,
    input   wire    [31: 0]     Imm_out,
    input   wire    [31: 0]     pc,
    input   wire                rd1_pc_Sel,
    input   wire                rd2_Imm_Sel,  
    input   wire    [3: 0]      ALU_Sel,
    input   wire                unsigned_Sel,
    output  wire    [1: 0]      Comp_out,
    output  wire    [31: 0]     ALU_out
    );

    wire [31:0]ALU_A;
    wire [31:0]ALU_B;
    wire [31:0]Comp_A;
    wire [31:0]Comp_B;

    assign ALU_A = (rd1_pc_Sel  == 1'b1)?pc:rd1;
    assign ALU_B = (rd2_Imm_Sel == 1'b1)?Imm_out:rd2;
    assign Comp_A = (rd1_pc_Sel  == 1'b1)?rd1:pc;
    assign Comp_B = (rd1_pc_Sel  == 1'b1)?rd2:Imm_out;

    ALU EX_ALU(
        .A(ALU_A),
        .B(ALU_B),
        .ALU_Sel(ALU_Sel),
        .unsigned_Sel(unsigned_Sel),
        .out(ALU_out)
    );

    Comp EX_Comp(
        .A(Comp_A),
        .B(Comp_B),
        .unsigned_Sel(unsigned_Sel),
        .out(Comp_out)
    );

endmodule
