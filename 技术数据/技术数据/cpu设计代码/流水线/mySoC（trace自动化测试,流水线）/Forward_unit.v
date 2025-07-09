`include "define.v"
module Forward_unit(
    input   wire           clk,
    input   wire           rst_n,
    input   wire   [4:0]   ID_rs1,
    input   wire   [4:0]   ID_rs2,
    input   wire   [4:0]   EX_wr,
    input   wire   [4:0]   MEM_wr,
    input   wire [31: 0]   EX_rd,
    input   wire [31: 0]   MEM_rd,
    input   wire           EX_we,
    input   wire           MEM_we,
    output  reg  [31:0]    Forward_data,
    output  wire           Forward_A_Sel,
    output  wire           Forward_B_Sel   
    );
//这里不直接用一个控制信号选择前递操作数是因为防止无需前递时选择错误
    reg EX_risk_A;
    reg EX_risk_B;
    reg MEM_risk_A;
    reg MEM_risk_B;

//判断EX冒险
//三个条件，写读寄存器一致，写寄存器不为0，需要写

    always @(posedge clk or negedge rst_n) 
    begin
        if (~rst_n) 
        begin
            EX_risk_A <= 0;
            EX_risk_B <= 0;
        end
        else 
        begin
            EX_risk_A <= (ID_rs1 == EX_wr && ~EX_wr == 0 && EX_we) ? 1'b1 : 1'b0; 
            EX_risk_B <= (ID_rs2 == EX_wr && ~EX_wr == 0 && EX_we) ? 1'b1 : 1'b0;
        end
    end

//判断MEM冒险
//写读寄存器一致，写寄存器不为0，需要写

    always @(posedge clk or negedge rst_n) 
    begin
        if (~rst_n) 
        begin
            MEM_risk_A <= 0;
            MEM_risk_B <= 0;
        end
        else 
        begin
            MEM_risk_A <= (ID_rs1 == MEM_wr && ~MEM_wr == 0 && MEM_we) ? 1'b1 : 1'b0; 
            MEM_risk_B <= (ID_rs2 == MEM_wr && ~MEM_wr == 0 && MEM_we) ? 1'b1 : 1'b0;
        end
    end

//前递的数据

    always @(*) 
    begin
        if (EX_risk_A)
        Forward_data = EX_rd;
        else if (MEM_risk_A)
        Forward_data = MEM_rd;
        else
        Forward_data = 32'b0;
    end 

//前递选择操作数
    assign Forward_A_Sel = (EX_risk_A == 1'b1 || MEM_risk_A == 1'b1)?1'b1:1'b0;
    assign Forward_B_Sel = (EX_risk_B == 1'b1 || MEM_risk_B == 1'b1)?1'b1:1'b0;


endmodule
