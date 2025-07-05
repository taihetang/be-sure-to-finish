`include "define.v"
module PC_Selector(
    input  wire [31:0] pc_current,
    input  wire [31:0] pc_branch,
    input  wire        pc_Sel,    
    output wire [31:0] pc_selected,
    output wire [31:0] pc4
    );

    assign pc4=pc_current+4;

    assign pc_selected = (pc_Sel)?pc_branch:pc4;

endmodule
