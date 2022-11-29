`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/10/2022 07:48:54 PM
// Module Name: And_module
// Target Devices: Basys3
// Description: A MUX Sub module and other logic parts.
// 
//////////////////////////////////////////////////////////////////////////////////

module Or_module(input S,input T,output M,output N);
    //assign output logic gates 
    assign M = ~(S | N);
    assign N = ~(M | T);
endmodule
