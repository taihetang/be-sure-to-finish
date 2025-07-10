`include "define.v"
module IF_unit (
    input   wire            clk,
    input   wire            rst_n,
    input   wire    [6:0]   opcode,
    input   wire    [31:0]  J_Imm,  
    input   wire    [31:0]  pc_branch,
    input   wire            stop_IF_ID,
    input   wire    [1:0]   Comp_out,
    input   wire    [2:0]   funct3, 
    output  wire    [31:0]  pc,
    output  wire            risk_Control
    );

    wire [31:0] pc_connecting;
    wire        pc_Sel;
    wire [31:0] pc_current;

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
        .J_Imm(J_Imm),
        .pc_branch(pc_branch),
        .pc_current(pc),
        .pc_Sel(pc_Sel),    
        .stop_IF_ID(stop_IF_ID),
        .pc_selected(pc_connecting),
        .risk_Control(risk_Control)
    );

    PC IF_PC(
        .clk (clk),
        .rst_n(rst_n),
        .pc_selected(pc_connecting),
        .pc(pc_current)
    );

    reg risk_Control_postpone;
// 当有冒险时，停顿两个时钟周期
    assign pc = (risk_Control_postpone) ? pc_branch :(risk_Control) ? 0 : pc_current;
 
//assign inst = (risk_Control) ? 0 : inst_irom;
//停顿
    always @(posedge clk or negedge rst_n) 
    begin
        if (~rst_n) 
            risk_Control_postpone <= 0;
        else 
            risk_Control_postpone <= risk_Control;
    end

endmodule