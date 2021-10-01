`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2021 11:35:08 AM
// Design Name: 
// Module Name: tb_design_1
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


module tb_design_1(
    );
    
    reg [1:0]A;
    reg [1:0]C;
    reg [1:0]B;
    reg [1:0]D;
    reg Clk;
    wire [4:0]Out;
    
    design_1_wrapper m1(A, C, B, D, Clk, Out);
    
    initial 
    begin
    Clk = 0;
    repeat (200)
    #1 Clk=~Clk;      
    $finish;
    end
 
    initial 
    begin
    A = 2'b00;
    B = 2'b00;     
    C = 2'b00;
    D = 2'b00;     
    #10
    A = 2'b01;
    B = 2'b10;     
    C = 2'b01;
    D = 2'b10; 
    #10
    A = 2'b10;
    B = 2'b10;     
    C = 2'b10;
    D = 2'b10;        
    #10
    A = 2'b11;
    B = 2'b01;     
    C = 2'b01;
    D = 2'b10;     
    #10
    A = 2'b11;
    B = 2'b10;     
    C = 2'b11;
    D = 2'b10;   
    #10
    $finish;
    end

    
endmodule
