`include "define.v"
module ID_unit(
    input   wire                clk,
    input   wire                rst_n,
    input   wire    [31:0]      inst,
    input   wire    [2:0]       Imm_Sel,
    input   wire                we_reg,
    input   wire    [31:0]      wd,
    output  wire    [31:0]      Imm_out,
    output  wire    [31:0]      rd1,
    output  wire    [31:0]      rd2,
    output  wire    [6:0]       opcode,
    output  wire    [4:0]       wr,
    output  wire    [2:0]       funct3,
    output  wire    [4:0]       rs1,
    output  wire    [4:0]       rs2,
    output  wire    [6:0]       funct7
);

    Imm_Gen ID_Imm_Gen(
        .inst(inst),
        .Imm_Sel(Imm_Sel),
        .Imm_out(Imm_out)
    );

    Inst_decoder ID_Inst_decoder(
        .inst(inst),
        .opcode(opcode),
        .wr(wr),          
        .funct3(funct3),  
        .rs1(rs1),        
        .rs2(rs2),        
        .funct7(funct7)
    );
    

    Register ID_Register(
        .clk(clk),
        .rst_n(rst_n),
        .we_reg(we_reg),
        .rs1(rs1),        
        .rs2(rs2),
        .wr(wr),
        .wd(wd),
        .rd1(rd1),
        .rd2(rd2)
    );

    



endmodule
