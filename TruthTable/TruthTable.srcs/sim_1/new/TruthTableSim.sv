`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2022 11:27:43 AM
// Design Name: 
// Module Name: TruthTableSim
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


module TruthTableSim();

logic sA,sB,sC,sX,sY;

TruthTable_module UUT(
.A(sA), .B(sB), .C(sC), .X(sX), .Y(sY));

initial begin
sA = 0; sB=0; sC=0;
#10;
sC=1;
#10;
sC=0; sB=1;
#10;
sB=1; sC=1;
#10;
sA=1; sB=0; sC=0;
#10;
sC=1;
#10;
sC=0; sB=1;
#10;
sC=1;
end

endmodule
