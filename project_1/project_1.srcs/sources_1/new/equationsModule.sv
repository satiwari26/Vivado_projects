`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 09/27/2022 09:58:27 AM
// Module Name: equationsModule
// Project Name: Lab 1
// Target Devices: Basys3
// Description: simple logic circuit for the given equation
//////////////////////////////////////////////////////////////////////////////////


module equationsModule(
    input A,
    input B,
    input C,
    input D,
    output X,
    output Y
    );
    
    assign X = (~A & C) | (A & ~B & ~D) ^ (A & C & D) ^ (A & ~B) | (B & D);
    assign Y = (C & D) | (A & B) ^ (A & ~C) | (~A & ~B);
endmodule
