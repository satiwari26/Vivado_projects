`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/03/2022 05:49:58 PM
// Module Name: CoffeeBuyerModule
// Project Name: Lab 2: Logic Minimization
// Target Devices: Basys3
// Description: Simplyfying the given equation by using boolean algebra.
//////////////////////////////////////////////////////////////////////////////////


module CoffeeBuyerModule(
    input A,
    input B,
    input C,
    input D,
    output X
    );
    
    assign X = (~A & D) | (A & ~B) | (~B & C) | (~A & B & ~C) | (A & ~D & C);
endmodule
