`include "define.v"
module IF_unit (
    input   wire            clk,
    input   wire            rst_n,
    input   wire    [6:0]   opcode,
    input   wire    [31:0]  J_Imm,  
    input   wire            stop_IF_ID,
    input   wire    [1:0]   Comp_out,
    input   wire    [2:0]   funct3, 
    input   wire    [31:0]  pc_branch,
    output  wire    [31:0]  pc,
    output  wire            risk_Control
    );

    wire [31:0] pc_connecting;

    Branch_Contorl branch_contorl(
        .Comp_out(Comp_out),
        .funct3(funct3),
        .opcode(opcode),
        .pc_Sel(pc_Sel) 
    );

    PC_Selector IF_PC_Selector(
        .clk(clk),
        .rst_n(rst_n),
        .opcode(opcode),
        .pc(),
        .J_Imm(J_Imm),
        .pc_current(pc),
        .pc_Sel(pc_Sel),    
        .stop_IF_ID,
        .pc_selected(pc_connecting),
        .risk_Control(risk_Control)
    );

    PC IF_PC(
        .clk (clk),
        .rst_n(rst_n),
        .pc_selected(pc_connecting),
        .pc(pc)
    );

endmodule