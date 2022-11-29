`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2022 10:24:37 PM
// Design Name: 
// Module Name: And_module
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


module And_module(
    input A,
    input B,
    output X,Y
    );
    
    assign X = (A&B);
    assign Y = (B&~A);
    
endmodule
