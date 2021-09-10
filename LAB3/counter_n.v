`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2021 12:24:48 PM
// Design Name: 
// Module Name: counter_n
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


module counter_n(
    input CLK,
    input RESET,
    output reg [3:0] OUT
    );
    
     always @ (posedge CLK, posedge RESET) begin
          if(RESET == 1)
            OUT <= 0;
          else
            OUT <= OUT + 1;
        end
endmodule
