`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2021 11:45:50 AM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(
    );
    
    reg clk, reset;
    wire [3:0] out;
    
    counter_n m(clk, reset, out);
        
    initial 
    begin
       reset <=0;
    #1 reset  <=1;
    #2 reset  <=0;
    end 
    
    initial
    begin
       clk <= 0;
       repeat(20)
    #5 clk =~clk; 
    $finish;
    end  
    
    
endmodule
