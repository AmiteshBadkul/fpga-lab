`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2021 08:41:35 AM
// Design Name: 
// Module Name: Test_Car_FSM
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


module Test_Car_FSM(
    );
    
    reg left, right, reset, clk;
    wire LC, LB, LA, RA, RB, RC;
    
    Car_FSM m1(left, right, reset, clk, LC, LB, LA, RA, RB, RC);
    
    always #10 clk = ~clk;
    
    initial begin
    clk = 0;
    reset = 0;
    
    reset = 1;
    #10    
    
    // right side lights turned on
    reset = 0;
    left = 0;
    right = 1;
    #90    
    
    // left side lights turned on
    reset = 0;
    left = 1;
    right = 0;
    #90
    
    // both sides lights turned on 
    // nothing should occur 
    reset = 0;
    left = 1;
    right = 1;
    #90
    
    // none of the lights turned on
    // nothing should occur
    reset = 0;
    left = 0;
    right = 0;
    #90
    
        
    $finish;
    end
    
endmodule
