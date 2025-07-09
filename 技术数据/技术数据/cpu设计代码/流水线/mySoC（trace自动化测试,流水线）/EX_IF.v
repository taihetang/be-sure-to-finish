module EX_IF (
    input wire clk,
    input wire rst_n,
    input wire [31:0] pc_branch,
    output reg [31:0] pc_branch_postpone
);
//延迟一个周期的跳转
    always @(posedge clk or negedge rst_n) 
    begin
        if(~rst_n)
        pc_branch_postpone <= 0;
        else
        pc_branch_postpone <= pc_branch;
    end
endmodule