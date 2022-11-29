`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 04:57:02 PM
// Design Name: 
// Module Name: test_bench
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


module test_bench( input logic ARST,clk,
output logic clk_833
    );
    
    reg [2:0]count1;
    always_ff @(posedge clk or posedge ARST)
    begin
    //initializing clk_25, count1
    if(ARST==1)
    begin
    count1<=1;
    end
    else
    begin
    count1<= count1+1;
    end    
    end
	
	always_ff @(posedge clk or posedge ARST)
    begin
    if(ARST==1)
    begin
    clk_833<=0;
    end
    else if(count1==6)
    begin
    clk_833<=~clk_833;
    count1<=1;
    end
    end
endmodule
