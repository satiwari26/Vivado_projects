`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2022 10:31:30 PM
// Design Name: 
// Module Name: Colab_module
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


module Colab_module(
    input E,
    input F,
    output I,
    output J
    );
    
	logic G, H;
    And_module source1(
    .A(E),
    .B(F),
    .X(G),
    .Y(H)
    );
    Or_module source2(
    .S(G),
    .T(H),
    .M(I),
    .N(J));
    
endmodule
