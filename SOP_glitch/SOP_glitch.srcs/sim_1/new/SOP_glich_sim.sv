`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 12:38:13 PM
// Design Name: 
// Module Name: SOP_glich_sim
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


module SOP_glich_sim();

logic sA,sB,sY,sC;

SOP_glitch UUT(
.A(sA),.B(sB),.C(sC), .Y(sY));

initial begin
sA = 1;
sB=1;
sC=1;
#10;
sA=0;
sB=1;
sC=1;
#10;
sA=1;
sB=1;
sC=1;
#10;
//1234 changes


end
endmodule
