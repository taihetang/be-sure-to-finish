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
    input   wire                Forward_A_Sel,
    input   wire                Forward_B_Sel,
    input   wire    [31:0]      Forward_data,
    output  wire    [1: 0]      Comp_out,
    output  wire    [31: 0]     ALU_out
    );

    wire [31:0]ALU_A;
    wire [31:0]ALU_B;
    wire [31:0]Comp_A;
    wire [31:0]Comp_B;

    //执行前进行选择 
    assign A = (Forward_A_Sel == 1'b1)?Forward_data:rd1;
    assign B = (Forward_B_Sel == 1'b1)?Forward_data:rd2;

    assign ALU_A = (rd1_pc_Sel  == 1'b1)?pc:A;
    assign ALU_B = (rd2_Imm_Sel == 1'b1)?Imm_out:B;
    assign Comp_A = (rd1_pc_Sel  == 1'b1)?A:pc;
    assign Comp_B = (rd2_Imm_Sel  == 1'b1)?B:Imm_out;

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
