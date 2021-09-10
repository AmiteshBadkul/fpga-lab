`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2021 12:44:31 PM
// Design Name: 
// Module Name: counter_int
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


module counter_int(
    input CLK,
    input RESET,
    output reg [3:0] OUT
    );
    reg [26:0] CLK_DIV;
    always@(posedge CLK, posedge RESET)
    begin
    if(RESET != 0)
    CLK_DIV = 0; 
    else
    CLK_DIV = CLK_DIV + 1;
    end
    
    always@(posedge CLK_DIV[26] , posedge RESET)
    begin
    if(RESET != 0)
    OUT = 0; 
    else
    OUT = OUT + 1;
    end
endmodule
