`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 11/06/2022 08:41:12 AM
// Module Name: NAND
// Project Name: single cell memory
// Target Devices: Basys3
// Description: The given circuit is build to store a single bit
//////////////////////////////////////////////////////////////////////////////////


module NAND(
    input R,S,
    output Q,QN
    );
    
    //logic A1,A2,A3,A4;
    assign #1 QN = ~(Q&R);
    assign #1 Q = ~(QN&S);
endmodule
