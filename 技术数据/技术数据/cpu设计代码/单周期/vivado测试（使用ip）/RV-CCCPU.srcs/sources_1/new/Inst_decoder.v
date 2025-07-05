module Inst_decoder(
    input   wire    [31:0]      inst,
    output  wire    [6:0]       opcode,
    output  wire    [4:0]       wr,
    output  wire    [2:0]       funct3,
    output  wire    [4:0]       rs1,
    output  wire    [4:0]       rs2,
    output  wire    [6:0]       funct7
    );

    assign opcode   = inst [6:0];
    assign wr       = inst [11:7];
    assign funct3   = inst [14:12];
    assign rs1      = inst [19:15];
    assign rs2      = inst [24:20];
    assign funct7   = inst [31:25]; 


endmodule
