`include "define.v"
module PC(
    input              clk,
    input              rst_n,
    input  wire [31:0] pc_selected,
    output reg  [31:0] pc
    );

    always@(posedge clk or negedge rst_n)
    begin
    if(~rst_n)
        pc<=-4;
    else
        pc<=pc_selected;
    end


endmodule
