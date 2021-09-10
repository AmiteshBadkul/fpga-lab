`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2021 12:54:29 PM
// Design Name: 
// Module Name: Counter_FSM
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


module Counter_FSM(input CountUP, input clk, input reset, output reg[3:0] ClockValue);
reg [1:0] next_state, current_state;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;

reg[25:0]clk_div;
always@(posedge clk, posedge reset) 
begin
if (reset==1)
clk_div=0;
else
clk_div=clk_div+1;
end

always@(posedge clk_div[25],posedge reset)
begin
if(reset==1)
current_state=S0;
else
current_state=next_state;
end

always@(CountUP, current_state)
begin
case(current_state)
S0:begin
if(CountUP == 1)
next_state = S1;
else
next_state = S3;
end
S1:begin
if(CountUP == 1)
next_state = S2;
else
next_state = S0;
end
S2:begin
if(CountUP == 1)
next_state = S3;
else
next_state = S1;
end
S3:begin
if(CountUP == 1)
next_state = S0;
else
next_state = S2;
end
endcase
end

always@(current_state)
begin
case(current_state)
S0: ClockValue = 4'b0000;
S1: ClockValue = 4'b0010;
S2: ClockValue = 4'b0100;
S3: ClockValue = 4'b0110;
endcase
end
endmodule

