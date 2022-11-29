`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 11/06/2022 08:41:12 AM
// Module Name: NOR
// Project Name: single cell memory
// Target Devices: Basys3
// Description: The given circuit is build to store a single bit
//////////////////////////////////////////////////////////////////////////////////


module NOR(
    input R,S,
    output Q,QN
    );
    
    //logic A1,A2,A3,A4;
    assign #1 QN = ~(Q|S);
    assign #1 Q = ~(QN|R);
endmodule
