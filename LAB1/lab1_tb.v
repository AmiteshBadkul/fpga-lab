`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2021 11:35:46 AM
// Design Name: 
// Module Name: lab1_tb
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


module lab1_tb(

    );
    
    reg I0,I1,I2,I3;
    reg [1:0] Sel;
    
    wire Out;
    
    lab1 m(Sel[1:0], Out, I0,I1,I2,I3); 
    
    initial begin
    I0 = 1'b0;
    I1 = 1'b1;
    I2 = 1'b1;
    I3 = 1'b0;
    
    Sel = 2'b00;
    #10
    
    Sel = 2'b01;
    #10
    
    Sel = 2'b10;
    #10
    
    Sel = 2'b11;
    #10
    
    $finish;
    end

endmodule