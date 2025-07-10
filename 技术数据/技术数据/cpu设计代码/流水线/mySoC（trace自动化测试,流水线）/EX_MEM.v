`include "define.v"

module EX_MEM (
    input         clk,
    input         rst_n,
    input         flush,          // 冲刷信号（分支预测错误）
    
    // 来自控制单元的信号
    input         RegWrite_in,
    input         MemtoReg_in,
    input         MemWrite_in,
    input         MemRead_in,
    input  [1:0]  WB_type_in,    // 写回类型
    input  [1:0]  dram_extend_in,// 存储器扩展类型
    
    // 来自执行单元的结果
    input  [31:0] alu_result_in, // ALU计算结果
    input  [31:0] reg_data2_in,  // 寄存器数据2（用于存储）
    input  [4:0]  rd_addr_in,    // 目标寄存器地址
    input  [1:0]  Comp_out_in,   // 比较结果（用于分支）
    input  [31:0] pc_in,         // 当前PC值
    
    // 输出到MEM阶段
    output reg        RegWrite_out,
    output reg        MemtoReg_out,
    output reg        MemWrite_out,
    output reg        MemRead_out,
    output reg [1:0]  WB_type_out,
    output reg [1:0]  dram_extend_out,
    output reg [31:0] alu_result_out,
    output reg [31:0] reg_data2_out,
    output reg [4:0]  rd_addr_out,
    output reg [1:0]  Comp_out_out,
    output reg [31:0] pc_out
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        // 复位所有信号
        RegWrite_out <= 0;
        MemtoReg_out <= 0;
        MemWrite_out <= 0;
        MemRead_out <= 0;
        WB_type_out <= 0;
        dram_extend_out <= 0;
        alu_result_out <= 0;
        reg_data2_out <= 0;
        rd_addr_out <= 0;
        Comp_out_out <= 0;
        pc_out <= 0;
    end
    else if (flush) begin
        // 冲刷时清零控制信号
        RegWrite_out <= 0;
        MemWrite_out <= 0;
        MemRead_out <= 0;
        // 保持数据信号不变
        alu_result_out <= alu_result_in;
        reg_data2_out <= reg_data2_in;
        rd_addr_out <= rd_addr_in;
        Comp_out_out <= Comp_out_in;
        pc_out <= pc_in;
    end
    else begin
        // 正常传递所有信号
        RegWrite_out <= RegWrite_in;
        MemtoReg_out <= MemtoReg_in;
        MemWrite_out <= MemWrite_in;
        MemRead_out <= MemRead_in;
        WB_type_out <= WB_type_in;
        dram_extend_out <= dram_extend_in;
        alu_result_out <= alu_result_in;
        reg_data2_out <= reg_data2_in;
        rd_addr_out <= rd_addr_in;
        Comp_out_out <= Comp_out_in;
        pc_out <= pc_in;
    end
end

endmodule