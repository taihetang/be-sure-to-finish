测试代码：1.打开vivado
2.将coe文件写入Inst_Mem中
3.将对应的.s文件放入ripes中(需要对寄存器初始值置0)，通过对比寄存器与存储器的值验证cpu功能
3.在虚拟机的cdp-tests中运行python3 run+tab 


cpu设计代码：
BSTF_CPU_ip是vivado原始代码
digital_twin是接入了上板接口的代码
mySoc是trace测试所使用代码
