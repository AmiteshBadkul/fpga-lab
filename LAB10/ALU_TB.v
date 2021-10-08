`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 12:04:21 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB(
    );
    
    reg [7:0]A;
    reg [7:0]B;
    reg [3:0]S;
    wire [7:0]YL;
    wire [7:0]YH;
    
    ALU m1(A,B,S, YL, YH);
    
    initial 
    begin
    S=3'b000;
    A=8'b10001000;
    B=8'b01110111;
    #20
    
    S=3'b001;
    A=8'b10001000;
    B=8'b01110111;
    #20
    
    S=3'b010;
    A=8'b10001000;
    B=8'b01110111;
    #20
    
    S=3'b011;
    A=8'b10001000;
    B=8'b01110111;
    #20
    
    S=3'b100;
    A=8'b10001000;
    B=8'b01110111;
    #20
    
    S=3'b101;
    A=8'b10001000;
    B=8'b01110111;
    #20
    
    S=3'b110;
    A=8'b10001000;
    B=8'b01110111;
    
    S=3'b111;
    A=8'b10001000;
    B=8'b01110111;
    #20
    
    $finish;
    end

    
endmodule
