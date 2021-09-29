`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2021 11:56:29 AM
// Design Name: 
// Module Name: Test_Design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Test_Design(
    );
    reg [1:0]A;
    reg [1:0]B;
    reg Clk;
    wire [1:0]Out_A;
    wire [1:0]Out_B;
    wire [3:0]P;
    design_1_wrapper a1(A, B, Clk, Out_A, Out_B, P);
    initial 
    begin
    Clk = 0;
    repeat (200)
    #1 Clk=~Clk;     
    $finish;
    end
    initial
    begin
    A=2'b01;
    B=2'b10;
    #10
    A=2'b10;
    B=2'b10;
    #10
    A=2'b11;
    B=2'b11;
    #10
    $finish;
    end
     
endmodule
