`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 11:56:15 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] A,
    input [7:0] B,
    input [3:0] S,
    output reg [7:0] YL,
    output reg [7:0] YH
    );
    
    always@(A,B,S)
    begin
    case(S)
    
    3'b000:
    begin
    {YH,YL}=A+B;
    end
    
    3'b001:
    begin
    {YH, YL} =A-B;
    end
    
    3'b010:
    begin
    {YH, YL} =A*B;
    end
    
    3'b011:
    begin
    YL=A+1;
    YH=0;
    end
    
    3'b100:
    begin
    YL=A<<B;
    YH=0;
    end
    
    3'b101:
    begin
    {YH, YL}= A&&B;
    end
    
    3'b110:
    begin
    {YH, YL}= A|B;
    end
    
    3'b111:
    begin
    {YH, YL} =A^B;
    end
    
    
    endcase 
    end    
endmodule
