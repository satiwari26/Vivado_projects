`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 09:02:45 PM
// Design Name: 
// Module Name: Modular_sim
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


module Modular_sim();
    logic [3:0] sA, sB, sV;
	logic [2:0] ssel1;
    
    Main_module UUT(
    .A(sA), .B(sB), .V(sV), .sel1(ssel1));
    
    initial begin
    
    sA = 4'b0000;
    sB = 4'b0000;
    ssel1 = 2'b00;
    #10;
    sA = 4'b0000;
    sB = 4'b0000;
    ssel1 = 2'b01;
    #10;
    sA = 4'b0000;
    sB = 4'b0000;
    ssel1 = 2'b10;
    #10;
    sA = 4'b0000;
    sB = 4'b0000;
    ssel1 = 2'b11;
    #10;
    sA = 4'b1000;
    sB = 4'b0000;
    ssel1 = 2'b00;
    #10;
    sA = 4'b0000;
    sB = 4'b1000;
    ssel1 = 2'b01;
    #10;
    sA = 4'b0010;
    sB = 4'b1000;
    ssel1 = 2'b10;
    #10;
    sA = 4'b0001;
    sB = 4'b0010;
    ssel1 = 2'b11;
    #10;
    sA = 4'b0110;
    sB = 4'b0011;
    ssel1 = 2'b00;
    #10;
    sA = 4'b1010;
    sB = 4'b1101;
    ssel1 = 2'b01;
    #10;
    sA = 4'b1100;
    sB = 4'b0101;
    ssel1 = 2'b10;
    #10;
    sA = 4'b1101;
    sB = 4'b1110;
    ssel1 = 2'b11;
    #10;
    sA = 4'b1010;
    sB = 4'b1110;
    ssel1 = 2'b00;
    #10;
    sA = 4'b1011;
    sB = 4'b1010;
    ssel1 = 2'b01;
    #10;
    sA = 4'b1100;
    sB = 4'b1001;
    ssel1 = 2'b10;
    #10;
    sA = 4'b1011;
    sB = 4'b1011;
    ssel1 = 2'b11;
    
    end
endmodule
