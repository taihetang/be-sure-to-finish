`include "define.v"
module Bubble_unit (
    input   wire   [4:0]   ID_rs1,
    input   wire   [4:0]   ID_rs2,
    input   wire   [4:0]   EX_wr,
    input   wire           Load_Sel,
    input   wire           risk_Control,
    output  wire           stop_ID_EX,
    output  wire           stop_IF_ID
    );
//即停顿模块
//停顿有两种情况
//发生了控制冒险，即分支的冒险，需要清空内容
//发生了Load指令的冒险，不需要清空内容，只需要停顿
//判断Load实际上就是判断EX冒险，那么条件一致


endmodule