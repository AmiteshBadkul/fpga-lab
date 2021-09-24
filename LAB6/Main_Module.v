`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2021 01:02:10 PM
// Design Name: 
// Module Name: Main_Module
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


module Main_Module(
    input mClk,
    input Reset,
    input B0,
    input B1,
    output Correct,
    output Incorrect
    );
    
    wire Clk190;
    wire ClkFSM;
    
    Clk_div_190 m1(mClk, Reset, Clk190);
    
    Debounce m2(Clk190, B, Reset, ClkFSM);
    
    Door_Lock_FSM m3(ClkFSM, Reset, Correct, Incorrect);
    
    

endmodule
