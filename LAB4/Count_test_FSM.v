`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2021 12:55:39 PM
// Design Name: 
// Module Name: Count_test_FSM
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


module Count_test_FSM(
    );
    reg CountUP,clk,reset;
    wire [3:0] CountValue;
    
    Counter_FSM a1( CountUP, clk, reset, CountValue);
    always #10 clk = ~clk;
    initial begin
    clk = 0;
    reset = 0;
    
    reset = 1;
    #10
    
    reset = 0;
    CountUP = 1;
    #90
    
    reset = 0;
    CountUP = 0;
    #90
    
    $finish;
    end
    
    
    
endmodule