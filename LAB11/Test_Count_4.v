`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2021 09:39:51 AM
// Design Name: 
// Module Name: Test_Count_4
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


module Test_Count_4(
    );
    
    reg Rst, Clk, UP;
    wire [7:0] Count;
    
    Counter_4_P2 m1(Rst, Clk, UP, Count);
    
    always #10 Clk = ~Clk;
    initial begin
    Clk = 0;
    Rst = 0;
    
    Rst = 1;
    #10
    
    Rst = 0;
    UP = 1;
    #90
    
    Rst = 0;
    UP = 0;
    #90
    
    $finish;
    end
    
    
endmodule
