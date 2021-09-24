`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Amitesh Badkul 
// 
// Create Date: 09/24/2021 12:40:09 PM
// Design Name: 
// Module Name: Door_Lock_FSM
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


module Door_Lock_FSM(
    input Clk,
    input Reset,
    input B,
    output reg Correct,
    output reg Incorrect
    );
    
    reg [3:0] present_state, next_state;
    
    parameter S0=4'b0000, S1=4'b0001, S2=4'b0010, S3=4'b0011, S4=4'b0100, E1=4'b0101, E2=4'b0110, E3=4'b0111, E4=4'b1000;
    
    always @ (posedge Clk, posedge Reset)
    begin
    
    if(Reset == 1)
    
    present_state = S0;
    else
    present_state = next_state;
      
    end
    
    always @ (*)
    begin
    
    case(present_state)
    
    S0: if (B==1)
         next_state = S1;
         else
         next_state = E1;
         
    S1:  if (B == 0)
          next_state = S2;
         else
          next_state = E2;
  
    S2:  if (B == 0)
          next_state = S3;
         else
          next_state = E3;
    
    S3:  if (B==1)
           next_state = S4;
         else
           next_state = E4;
           
    S4: next_state = S0;
    
    E1: next_state = E2;
    
    E2: next_state = E3;
    
    E3: next_state = E4;
    
    E4: next_state = S0;
   
    default: next_state = 0;
    
    endcase
    end
    
    
    always @ (present_state)
    begin
    if(present_state == 4)
    begin
    Correct = 1'b1;
    Incorrect = 1'b0;
    end
    
    else if (present_state == E4)
    begin
    Incorrect = 1'b1;
    Correct = 1'b0;
    end
    
    else
    begin
    Correct = 1'b0;
    Incorrect = 1'b0;
    end
    
    end
    
endmodule
