`include "define.v"
module IF_unit (
    input   wire           clk,
    input   wire           rst_n,
    input   wire [31:0]    pc_branch,
    input   wire           pc_Sel,
    output  wire [31:0]    pc,
    output  wire [31:0]    pc4
    );

    wire [31:0] pc_connecting;

    PC_Selector IF_PC_Selector(
        .pc_current(pc),
        .pc_branch(pc_branch),
        .pc_Sel(pc_Sel),
        .pc_selected(pc_connecting),
        .pc4(pc4)
    );

    PC IF_PC(
        .clk (clk),
        .rst_n(rst_n),
        .pc_selected(pc_connecting),
        .pc(pc)
    );

endmodule