`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2021 11:49:24 AM
// Design Name: 
// Module Name: Adder_8
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


module Adder_8(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Sum,
    output Cout
    );
    
    assign {Cout, Sum} = A + B + Cin;
endmodule
