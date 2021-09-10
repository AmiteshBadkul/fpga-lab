`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2021 09:13:30 AM
// Design Name: 
// Module Name: lab1
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


module lab1(
    input [1:0] Sel,
    output reg O,
    input A,
    input B,
    input C,
    input D
    );
   

    always @ (A or B or C or D or Sel) begin
       case (Sel)
         2'b00 : O = A;
         2'b01 : O = B;
         2'b10 : O = C;
         2'b11 : O = D;
       endcase
     end
         
    
endmodule
