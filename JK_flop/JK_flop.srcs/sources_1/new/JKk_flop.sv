`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2022 04:08:13 PM
// Design Name: 
// Module Name: JKk_flop
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


module JKk_flop(
input logic J,K,clk,
input logic SRST,ARST,
output logic Q
    );
    
    always_ff @(posedge clk or posedge ARST)
    begin
        //reset case
        if(J==0&&K==1)
            begin
            //async reset
            if(ARST==1)
            begin
                Q<=0;
            end
            //sync reset
            else if(SRST==1&&clk==1)
            begin
                Q<=0;
            end
            end
            //set Q=1
         else if(J==1&&K==0)
         begin
            Q<=1;
         end
         //toggle Q and ~Q
         else if(J==1&&K==1)
         begin
            Q=~Q;
         end
         //save state
         else
         begin
            Q<=Q;
         end
    
    end
endmodule
