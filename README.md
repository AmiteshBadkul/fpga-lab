# FPGA Based System Design
This repo contains my attempt at the lab work of the course "EEE F348 - FPGA Based System Design". The code has been written in Verilog and the simulation, RTL synthesises, Implementation and bit stream generation is done on Xilinx Vivado 2018.2

## List of Experiments
1. 4:1 MUX 
2. 4-bit Counter using push button
3. 4-bit Counter using the internal clock 
4. Design a state machine to design an UP-Down 4-bit even counter. The state machine has one input (CountUP) and one 4-bit output (CountValue). When (CountUP=1)
the counter will have sequence 0-2-4-6-0.. If (CountUp=0) counter will have sequence 6-4-2-0-6... In addition to CountUP there are two more inputs Clk and Reset for normal operation of FSM. When
Reset is enabled CountValue is reset to 000. The counting rate is (i.e. the time between two successive states is 0.5s).


## FPGA Board Details
Zedboard Zynq Evaluation and Development Kit [xc7z020clg484-1](https://www.xilinx.com/products/boards-and-kits/1-8dyf-11.html)

