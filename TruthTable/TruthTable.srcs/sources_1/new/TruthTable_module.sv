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


module TruthTable_module(
    input A,
    input B,
    input C,
    output X,
    output Y
    );
    
    assign X = (~A & ~B & ~C) | (~A & ~B & C) | (~A & B & C) | (A & ~B & C) | (A & B & ~C);
    assign Y = (~A & ~B & C) | (A & ~B & ~C) | (A & B & ~C) | (A & B & C);
endmodule
