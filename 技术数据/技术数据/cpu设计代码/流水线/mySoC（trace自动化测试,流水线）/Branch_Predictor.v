`include "define.v"
module Branch_Predictor (
    input   wire    [6:0]   opcode,
    input   wire    [31:0]  pc,
    input   wire    [31:0]  J_Imm,          
    output  wire    [31:0]  pc_pre,
    output  wire            branch_Sel
    );
//分支预测，预测B一定不跳转，Jar一定跳转(不包含jalr，因为他是rs1+imm)
//jar
    assign branch_Sel = (opcode == `jal)?1'b1:1'b0;
//跳转地址
    wire    [31:0]  pc_branch;
    assign pc_branch = pc + J_Imm;
//pc4
    wire    [31:0]  pc4;
    assign pc4 = pc + 4;

    assign pc_pre = (branch_Sel == 1'b1)?pc4:pc_branch;

endmodule