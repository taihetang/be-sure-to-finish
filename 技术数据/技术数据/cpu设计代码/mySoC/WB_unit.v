`include "define.v"
module WB_unit(
    input   wire    [31:0]  pc4,
    input   wire    [1:0]   Comp_out,
    input   wire    [31:0]  ALU_out,
    input   wire    [31:0]  Dram_out,
    input   wire    [1:0]   WB_type,
    input   wire    [1:0]   Comp_Sel,
    output  reg     [31:0]  WB_data
    );

    reg    Comp_flag;              //in fact
    always @(*) 
    begin
        case (Comp_Sel)
            2'b00: Comp_flag = (Comp_out == 2'b00) ? 1'b1 : 1'b0;
            2'b01: Comp_flag = (Comp_out == 2'b01) ? 1'b1 : 1'b0;
            2'b10: Comp_flag = (Comp_out == 2'b10) ? 1'b1 : 1'b0;
            2'b11: Comp_flag = ((Comp_out == 2'b01) || (Comp_out == 2'b11)) ? 1'b1 : 1'b0;
        endcase
    end

    always @(*)
    begin
        case (WB_type)
            2'b00:      WB_data = ALU_out;
            2'b01:      WB_data = Comp_flag;
            2'b10:      WB_data = pc4;
            2'b11:      WB_data = Dram_out;
        endcase
    end


endmodule
