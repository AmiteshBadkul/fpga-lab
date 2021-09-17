# FPGA Based System Design
This repo contains my attempt at the lab work of the course "EEE F348 - FPGA Based System Design". The code has been written in Verilog and the simulation, RTL synthesises, Implementation and bit stream generation is done on Xilinx Vivado 2018.2

## List of Experiments
1. 4:1 MUX 
2. 4-bit Counter using push button
3. 4-bit Counter using the internal clock 
4. Design a state machine to design an UP-Down 4-bit even counter. The state machine has one input (CountUP) and one 4-bit output (CountValue). When (CountUP=1)
the counter will have sequence 0-2-4-6-0.. If (CountUp=0) counter will have sequence 6-4-2-0-6... In addition to CountUP there are two more inputs Clk and Reset for normal operation of FSM. When Reset is enabled CountValue is reset to 000. The counting rate is (i.e. the time between two successive states is 0.5s).
5. Design a state machine to control the tail lights of a 1965 Ford Thunder bird (Figure 1). The tail lights are composed of three lights on each side which operate for the turns as shown in figure 2. The state machine has two inputs (LEFT, RIGHT) and 6 outputs (LC, LB, LA, RA, RB and RC). When (RIGHT=0 and LEFT=0) or when (RIGHT=1 and LEFT=1) no lights will turn ON. If (RIGHT=0 and LEFT=1) then lights LC, LB, and LA will be ON as shown in figure 2(a) indicating LEFT turn. If (RIGHT=1 and LEFT=0) then lights RA, RB, and RC will be ON as shown in figure 2(b) indicating RIGHT turn. In addition to LEFT and RIGHT there are two more inputs Clk and Reset for normal operation of FSM. When Reset is enabled all lights will be OFF. The flashing rate of LEDs is 2Hz (i.e. the time between two successive states is 0.5s). 

## FPGA Board Details
Zedboard Zynq Evaluation and Development Kit [xc7z020clg484-1](https://www.xilinx.com/products/boards-and-kits/1-8dyf-11.html)


## Format of Labs
1. filename.v    ---> contains the code for the design
2. filename_tb.v ---> contains the testbench for the design 
3. filename.bit  ---> contains the bit stream file generated that is to be dumped on the FPGA board for usage
4. filename.xdc  ---> the constraints file

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://github.com/AmiteshBadkul/fpga-lab/blob/master/LICENSE)

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Author - [@AmiteshBadkul](https://github.com/AmiteshBadkul) - f20180764@hyderabad.bits-pilani.ac.in

Project Link: [https://github.com/AmiteshBadkul/fpga-lab](fpga-lab)

