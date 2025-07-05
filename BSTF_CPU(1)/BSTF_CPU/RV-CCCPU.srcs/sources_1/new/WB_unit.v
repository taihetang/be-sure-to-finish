`include "define.v"
module WB_unit(
    input   wire    [31:0]  pc4,
    input   wire    [1:0]   Comp_out,
    input   wire    [31:0]  ALU_out,
    input   wire    [31:0]  Dram_out,
    input   wire    [1:0]   WB_type,
    output  wire    [31:0]  WB_data
    );

    wire    [31:0]  Comp_out_extend;
    assign  Comp_out_extend = {31'b0,Comp_out[0]};

    reg [31:0]  WB_data_reg;
    assign WB_data = WB_data_reg;

    always @(*)
    begin
        case (WB_type)
            2'b00:      WB_data_reg = ALU_out;
            2'b01:      WB_data_reg = Comp_out;
            2'b10:      WB_data_reg = pc4;
            2'b11:      WB_data_reg = Dram_out;
            default:    WB_data_reg =32'b0;
        endcase
    end


endmodule
