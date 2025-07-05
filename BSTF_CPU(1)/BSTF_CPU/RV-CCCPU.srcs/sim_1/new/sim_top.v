`timescale 1ns / 1ps
 module cpuclk_sim(
 );
    // input
    reg fpga_clk = 0;
    // output
    wire clk_lock;
    wire pll_clk;
    wire cpu_clk;
     
    reg cpu_rst_n;
 
    always #5 fpga_clk = ~fpga_clk;
 
    cpuclk UCLK (
        .clk_in1    (fpga_clk),
        .locked     (clk_lock),
        .clk_out1   (pll_clk)
    );
 
    assign cpu_clk = pll_clk & clk_lock;

         
    initial 
    begin
        cpu_rst_n = 1;
        #20;
        cpu_rst_n = 0; // 复位信号结束，开始运行
        #20000;
        $finish;
    end
     
    BSTF_CPU CPU (
        .clk(cpu_clk),
        .rst_n(cpu_rst_n)
    );
 
 endmodule