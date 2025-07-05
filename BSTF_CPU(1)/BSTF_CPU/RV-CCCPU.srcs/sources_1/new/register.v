`include "define.v"
module Register(
    input   wire          clk,
    input   wire          rst_n,
    input   wire          we_reg,   //wrire enable
    input   wire[4: 0]    rs1,
    input   wire[4: 0]    rs2,
    input   wire[4: 0]    wr,        //write address
    input   wire[31: 0]   wd,        //write data
    output  wire[31: 0]   rd1,
    output  wire[31: 0]   rd2
    );

    reg[31: 0] regs[0:31];  
    //访问x1时只需取regs[1]，避免了索引偏移

    assign rd1 = (|rs1) ? regs[rs1] : {32{1'b0}};  
    assign rd2 = (|rs2) ? regs[rs2] : {32{1'b0}};
    //判断rs1�?否全�?0

    integer i;
    always @(posedge clk) 
    begin
        if (!rst_n) 
        begin
            for(i=0; i<=31; i=i+1)  
                regs[i] <= 32'b0;
        end
        else if (we_reg && |wr)       // 写使�?+非零地址
        begin  
            regs[wr] <= wd;
        end
    end


endmodule