vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" \
"../../../../RV-CCCPU.gen/sources_1/ip/cpuclk/cpuclk_clk_wiz.v" \
"../../../../RV-CCCPU.gen/sources_1/ip/cpuclk/cpuclk.v" \


vlog -work xil_defaultlib \
"glbl.v"

