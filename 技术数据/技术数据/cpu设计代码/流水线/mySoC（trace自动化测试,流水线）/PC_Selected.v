`include "define.v"
module PC_Selector(
    input   wire            clk,
    input   wire            rst_n,
    input   wire    [6:0]   opcode,
    input   wire    [31:0]  J_Imm,
    input   wire    [31:0]  pc_branch,
    input   wire    [31:0]  pc_current,
    input   wire            pc_Sel,    
    input   wire            stop_IF_ID,
    output  wire    [31:0]  pc_selected,
    output  wire            risk_Control
    );
    
//记录跳转
//jump_record实际上两位代表对EX阶段与ID阶段的指令进行预测跳转记录，后续再与跳转计算结果对比
    reg [1:0]  jump_record;
    always @(*) 
    begin
        if (~rst_n == 1'b1)
            jump_record <= 2'b0;
        else if (risk_Control)
            jump_record <= 2'b0;
        else
            jump_record <= (stop_IF_ID == 1'b1)?jump_record:{pre_branch,jump_record[1]};
    end

//jump_record预测从哪里来，在分支预测模块里面
//例化为pre_branch
    wire   [31:0]   pc;
    assign  pc = (risk_Control == 1'b1)?pc_branch:pc_current;

    Branch_Predictor pre_unit (
        .opcode(opcode),
        .pc(pc),
        .J_Imm(J_Imm),
        .pc_pre(pc_pre),
        .branch_Sel(pre_branch)
    );

//下面就是判断冒险了
    assign risk_Control = (pc_Sel == jump_record[0]) ? 1'b0 : 1'b1;

//pc值
//这里与之前不同，之前还需要pc4，这里的pc4在预测模块已经实现
    assign pc_selected = (stop_IF_ID)?pc_current:pc_pre;

endmodule
