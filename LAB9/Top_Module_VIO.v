`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2021 11:55:15 AM
// Design Name: 
// Module Name: Top_Module_VIO
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


module Top_Module_VIO(
    input Clk,
    output [7:0] Sum1
    );
    
    wire [7:0] A;
    wire [7:0] B;
    wire Cin;
    wire [7:0] Sum;
    wire Cout;
    
    Adder_8 a1(A, B, Cin, Sum, Cout);
    
    vio_0(Clk, Sum, Cout, A, B, Cin);
    
    assign Sum1 = Sum;
    
endmodule
