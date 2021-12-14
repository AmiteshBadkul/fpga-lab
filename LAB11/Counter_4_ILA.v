`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2021 08:33:02 AM
// Design Name: 
// Module Name: Counter_4_ILA
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


module Counter_4_ILA(
    input Rst,
    input Clk,
    input UP,
    output reg [7:0] Count
    );
    
    always @ (posedge Clk, negedge Rst)
    begin
    
    if (Rst == 0)
        Count = 0;
    else if (UP==1'b1)
        Count = Count + 1;
    else
        Count = Count - 1;
    end
    
endmodule
