//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Sep 29 12:01:58 2021
//Host        : DESKTOP-0IAL7UH running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A_0,
    B_0,
    CLK_0,
    Out_A,
    Out_B,
    P_0);
  input [1:0]A_0;
  input [1:0]B_0;
  input CLK_0;
  output [1:0]Out_A;
  output [1:0]Out_B;
  output [3:0]P_0;

  wire [1:0]A_0;
  wire [1:0]B_0;
  wire CLK_0;
  wire [1:0]Out_A;
  wire [1:0]Out_B;
  wire [3:0]P_0;

  design_1 design_1_i
       (.A_0(A_0),
        .B_0(B_0),
        .CLK_0(CLK_0),
        .Out_A(Out_A),
        .Out_B(Out_B),
        .P_0(P_0));
endmodule
