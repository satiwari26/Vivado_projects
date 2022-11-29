`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/04/2022 01:40:21 PM
// Module Name: JudgePanel_Module
// Project Name: Lab 2
// Target Devices: Basys3
// Description: A simple system consists of a 5-inputs, 2-outputs logic system that behaves according to the judges responses.
// 
//////////////////////////////////////////////////////////////////////////////////


module JudgePanel_Module(
    input J1,
    input J2,
    input J3,
    input J4,
    input J5,
    output P,
    output F
    );
	
	
    assign P = (J5 & J1 & J4) | (J5 & J1 & J3) | (J5 & J2 & J4) | 
    (J5 & J2 & J3) | (J5 & J1 & J2) | (J5 & J3 & J4) | 
    (J2 & J3 & J4) | (J1 & J3 & J4) | (J1 & J2 & J4) | (J3 & J1 & J2);
    
    assign F = (~J5 & ~J3 & ~J4) | (~J5 & ~J1 & ~J2) | (~J5 & ~J1 & ~J3) |
	(~J5 & ~J1 & J3 & ~J4) | (~J5 & ~J2 & J3 & ~J4) | (~J1 & ~J3 & ~J4) |
	(~J1 & ~J2 & ~J3) | (~J2 & ~J3 & ~J4) | (~J1 & ~J2 & ~J4) | (~J5 & ~J2 & ~J3);
    
endmodule
