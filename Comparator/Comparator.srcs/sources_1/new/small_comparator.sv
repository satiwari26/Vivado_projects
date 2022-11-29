`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2022 09:22:12 AM
// Design Name: 
// Module Name: small_comparator
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


module small_comparator(
    input P,
    input Q,
    input GTI,
    input LTI,
    input EQI,
    output GTO,
    output LTO,
    output EQO
    );
   assign GTO = (~P&~Q&GTI)|(P&~Q)|(P&Q&LTI);
   assign LTO = (~P&~Q&LTI)|(~P&Q)|(P&Q&LTI);
   assign EQO = (~P&~Q&EQI)|(P&Q&EQI);
endmodule
