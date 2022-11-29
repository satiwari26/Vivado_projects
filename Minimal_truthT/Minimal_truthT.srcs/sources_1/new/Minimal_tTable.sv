`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 08:47:28 PM
// Design Name: 
// Module Name: Minimal_tTable
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


module Minimal_tTable(
    input A,
    input B,
    input C,
    input D,
    output X,
    output Y
    );
    
    assign X = (~B & D) | (B & ~C & ~D) | (A & B & ~D);
    assign Y = (B & D) | (~A & B & ~C) | (C & D & ~A) | (A & B & C) | (~C & D & A);
    
endmodule
