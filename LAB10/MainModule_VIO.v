`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 11:58:56 AM
// Design Name: 
// Module Name: MainModule_VIO
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


module MainModule_VIO(input Clk
    );
    
    wire [7:0] A;
    wire [7:0] B;
    wire [3:0] S;
    wire [7:0] YL;
    wire [7:0] YH;
    
    ALU a1(A, B, S, YL, YH);
    vio_0 m1(Clk,YL,YH,A,B,S);
    
endmodule

