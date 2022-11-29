`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/17/2022 08:41:12 AM
// Module Name: SOP_glitch
// Project Name: Propagation Delay
// Target Devices: Basys3
// Description: The given circuit performs addition on the given input
//////////////////////////////////////////////////////////////////////////////////

module SOP_glitch(
    input A,B,C,
    output Y
    );
    
    logic A1,A2,A3,A4;
    
    assign #1 A1 = ~A;
    assign #1 A2 = A1&B;
    assign #1 A3 = A&C;
    assign #1 A4 = A2|A3;
    assign #1 Y = A4;
    
endmodule
