`include "define.v"
module Branch_Predictor (
    input  wire    [6:0]    opcode,
    input  wire    [4:0]    wr,
    input  wire    [2:0]    funct3,
    input  wire    [4:0]    rs1,
    input  wire    [4:0]    rs2,
    input  wire    [6:0]    funct7, 
    input   wire   [31:0]   pc,
    input   wire   [31:0]   pc4,
    output  wire   [31:0]   pc_pre,
    output  reg             jump
    );
//分支预测，预测B一定不跳转，J一定跳转
//1jar 2jalr
    wire branch_Sel;
    assign branch_Sel = (opcode == 7'b1101111 || opcode == 7'b1100111)?1'b1:1'b0;
//跳转地址
    reg pc_branch;

    assign pc_pre = ()?pc4:pc_branch;


endmodule