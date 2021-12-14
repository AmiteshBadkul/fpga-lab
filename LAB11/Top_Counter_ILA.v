`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2021 08:53:12 AM
// Design Name: 
// Module Name: Top_Counter_ILA
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


module Top_Counter_ILA(
    input Clk
    );
    
    wire Rst;
    wire UP;
    wire [7:0] Count;
    
    // counter module
    Counter_4_ILA m1(Rst, Clk, UP, Count);
    
    // VIO
    vio_0 v2(Clk, Count, Rst, UP);
    
    // ILA
    ila_0 i3(Clk, Rst, UP, Count);



endmodule
