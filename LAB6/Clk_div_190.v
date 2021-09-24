`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Amitesh Badkul
// 
// Create Date: 09/24/2021 12:34:56 PM
// Design Name: 
// Module Name: Clk_div_190
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


module Clk_div_190(input nClk,
                   input Reset,
                   output Clk190
    );
    
    reg [18:0] Clk_Div;
    
    
    always@(posedge nClk, posedge Reset) 
    begin
         if (Reset==1)
            Clk_Div=0;
         else
            Clk_Div=Clk_Div+1;
    end
    
    assign Clk190 = Clk_Div;
    
endmodule
