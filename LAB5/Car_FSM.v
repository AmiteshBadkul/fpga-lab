`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Amitesh Badkul
// 
// Create Date: 09/15/2021 11:11:56 AM
// Design Name: 
// Module Name: Car_FSM
// Project Name: Assignment 1
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

module Car_FSM(input left,
               input right,
               input reset,
               input clk,
               output reg LC,
               output reg LB,
               output reg LA,
               output reg RA,
               output reg RB,
               output reg RC 
    );
    
    // defining the States of the FSM 
    reg [3:0] present_state, next_state;
    parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110, S7=3'b111;
    
    //clock division 
    reg[25:0]clk_div;
    always@(posedge clk, posedge reset) 
    begin
         if (reset==1)
            clk_div=0;
         else
            clk_div=clk_div+1;
    end
    
    // state register block snippet
    always@(posedge clk_div[25],posedge reset)
    begin
         if(reset==1)
            present_state=S0;
         else
            present_state=next_state;
    end
    
    // input logic block snippet
    always@(present_state, left, right)
    begin
    
    case(present_state)
    // no ligts blinking 
    S0: begin
             if(left == 1 && right == 0)
                next_state = S1;
             else if(left == 0 && right == 1)
                next_state = S4;
             else
                next_state = S0;
        end
    // left light LA blinking
    S1: begin
             if(left == 1)
                next_state = S2;
        end
    // left two lights LB,LA blinking    
    S2: begin
             if(left == 1)
                next_state = S3;
        end
    // left three lights LC,LB,LA blinking    
    S3: begin
             if(left == 1)
                next_state = S0;
         end
     
     // right light RA blinking 
     S4: begin
              if(right == 1)
                 next_state = S5;
         end
  
     // right lights RA,RB blinking 
     S5: begin
              if(right == 1)
                next_state = S6;
         end
 
     // right lights RA,RB,RC blinking 
     S6: begin
              if(right == 1)
                 next_state = S0;
         end
         
      endcase
      
     end
    
    // output block snippet
    
    always @ (present_state)
    begin
    
    case(present_state)
     S0: begin
              LA=1'b0; LB=1'b0; LC=1'b0; RA=1'b0; RB=1'b0; RC=1'b0;
         end 
         
         
     
     S1: begin
              LB=1'b0; LC=1'b0; RA=1'b0; RB=1'b0; RC= 1'b0;
              LA = 1;
         end
 
     S2: begin
              LC=1'b0; RA=1'b0; RB=1'b0; RC = 1'b0;
              LA=1; LB = 1;
         end
      
     S3: begin
              RA=1'b0; RB=1'b0; RC = 1'b0;
              LA=1; LB=1; LC= 1;
         end
 
     S4: begin
              LB=1'b0; LC=1'b0; LA=1'b0; RB=1'b0; RC = 1'b0;
              RA = 1'b1;
          end
     S5: begin
              LC=1'b0; LA=1'b0; LB = 1'b0; RC = 1'b0;
              RA = 1'b1; RB = 1'b1;
         end
   
     S6: begin
               LA = 1'b0; LB = 1'b0; LC = 1'b0;
               RA = 1'b1; RB = 1'b1; RC = 1'b1;
         end     
        
    
    
    endcase
    
    end


    
endmodule