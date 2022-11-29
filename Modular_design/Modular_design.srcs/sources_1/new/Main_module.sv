`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2022 09:20:44 PM
// Design Name: 
// Module Name: Main_module
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


module Main_module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] V,
    input [1:0] sel1
    );
        logic [3:0] W;
        
    Mux1 mMain1(
    .I1(~(A&B)),
    .I0((A^B)),
    .out(W),
    .sel(sel1[0]));
    
    Mux1 mMain2(
    .I1(W),
    .I0(~W),
    .out(V),
    .sel(sel1[1]));
    
endmodule
