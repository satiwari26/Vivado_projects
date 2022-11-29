`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2022 07:48:54 PM
// Design Name: 
// Module Name: Mux1
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


module Mux1(
    input [3:0] I0,
    input [3:0] I1,
    output [3:0] out,
    input sel
    );
    
    assign out = (I0 & ~{sel,sel,sel,sel}) | (I1 & {sel,sel,sel,sel});
endmodule
