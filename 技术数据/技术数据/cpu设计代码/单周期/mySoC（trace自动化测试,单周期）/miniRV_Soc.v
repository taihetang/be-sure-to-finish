module miniRV_SoC (
    input  wire         fpga_rst,
    input  wire         fpga_clk,
    output wire         debug_wb_have_inst,
    output wire [31:0]  debug_wb_pc,
    output wire         debug_wb_ena,
    output wire [4:0]   debug_wb_reg,
    output wire [31:0]  debug_wb_value
);
    // 时钟域处理
    wire cpu_clk = fpga_clk;
    wire [15:0] irom_addr;
    wire [31:0] irom_data;
    wire [31:0] dram_addr;
    wire dram_we;
    wire [31:0] dram_wdata;
    wire [31:0] dram_rdata;
     
    

    // 指令存储器接口
    IROM Mem_IROM (
        .a      (irom_addr),   
        .spo    (irom_data)   
    );

    // 数据存储器接口
    DRAM Mem_DRAM (
        .clk    (cpu_clk),
        .a      (dram_addr),   
        .d      (dram_wdata),  
        .we     (dram_we),    
        .spo    (dram_rdata)   
    );

// CPU核心实例化
    myCPU Core_cpu (
        .cpu_rst        (fpga_rst),
        .cpu_clk        (cpu_clk),
        .irom_addr      (irom_addr),
        .irom_data      (irom_data),
        .dram_addr      (dram_addr),
        .dram_we        (dram_we),
        .dram_wdata     (dram_wdata),
        .dram_rdata     (dram_rdata),
        .debug_wb_have_inst (debug_wb_have_inst),
        .debug_wb_pc    (debug_wb_pc),
        .debug_wb_ena   (debug_wb_ena),
        .debug_wb_reg   (debug_wb_reg),
        .debug_wb_value (debug_wb_value)
    );
endmodule
