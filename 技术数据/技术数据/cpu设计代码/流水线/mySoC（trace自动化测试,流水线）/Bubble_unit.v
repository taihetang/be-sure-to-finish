`include "define.v"
module Bubble_unit (
    input   wire   [4:0]   ID_rs1,
    input   wire   [4:0]   ID_rs2,
    input   wire   [4:0]   EX_wr,
    input   wire           isLoad,
    input   wire           risk_Control,
    output  wire           stop_ID_EX,
    output  wire           stop_IF_ID
    );
//即停顿模块
//停顿有两种情况
//发生了控制冒险，即分支的冒险，需要清空内容
//发生了Load指令的冒险，不需要清空内容，只需要停顿
//判断Load实际上就是判断EX冒险，那么条件一致+isLoad
    wire risk_Load_Use;
    assign risk_Load_Use = (isLoad && (ID_rs1 == EX_wr || ID_rs2 == EX_wr) && !EX_wr == 5'b0)?1'b1:1'b0;
//控制

//两个停顿信号，一个用于停止一个周期一个用于两个
    assign stop_IF_ID = risk_Load_Use;
    assign stop_ID_EX = risk_Load_Use | risk_Control ;  
endmodule