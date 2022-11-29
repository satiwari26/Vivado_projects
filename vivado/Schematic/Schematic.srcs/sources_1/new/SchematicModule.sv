`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal POly
// Engineer: Saumitra Tiwari
// 
// Create Date: 09/27/2022 08:08:46 AM
// Design Name: 
// Module Name: SchematicModule
// Project Name: Lab 1
// Target Devices: Basys3
//Description: Creating a system verilog for given logic circuit
// 
//////////////////////////////////////////////////////////////////////////////////


module SchematicModule(
    input A,
    input B,
    input C,
    input D,
    output X,
    output Y,
    output Z
    );
    
    assign X = (~A & B & C) | ~(A & C) | (A & ~D);
    assign Y = ~((A & ~D) | ~(C & B));
    assign Z = ~(C & B) | (B & ~C);
endmodule
