`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 08:51:44 PM
// Design Name: 
// Module Name: Minimal_tTable_sim
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


module Minimal_tTable_sim();

logic sA, sB, sC, sD, sX, sY;

Minimal_tTable UUT(
.A(sA), .B(sB), .C(sC), .D(sD), .X(sX), .Y(sY));
 
initial begin

sA=0; sB=0; sC=0; sD=0;
#10;
sD=1;
#10;
sD=0; sC=1;
#10;
sD=1;
#10;
sC=0; sD=0; sB=1;
#10;
sD=1;
#10;
sD=0; sC=1;
#10;
sD=1;
#10;
sB=0; sC=0; sD=0; sA=1;
#10;
sD=1;
#10;
sD=0; sC=1;
#10;
sD=1;
#10;
sB=1; sC=0; sD=0;
#10;
sD=1;
#10;
sD=0; sC=1;
#10;
sD=1;

end

endmodule
