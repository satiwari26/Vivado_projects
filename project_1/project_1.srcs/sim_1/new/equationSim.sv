`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2022 10:36:43 AM
// Design Name: 
// Module Name: equationSim
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


module equationSim();
logic sA,sB,sC,sD,sX,sY;

equationsModule UUT(
.A(sA), .B(sB), .C(sC), .D(sD), .X(sX), .Y(sY));

initial begin
sA=0; sB=0; sC=0; sD=0;
    #10;
    sD=1;
    #10;
    sC=1; sD=0;
    #10;
    sD=1;
    #10;
    sB=1; sC=0;sD=0;
    #10;
    sD=1;
    #10;
    sC=1; sD=0;
    #10;
    sD=1;
    #10;
    sA=1; sB=0;sC=0;sD=0;
    #10;
    sD=1;
    #10;
    sC=1; sD=0;
    #10;
    sD=1;
    #10;
    sB=1; sC=0; sD=0;
    #10;
    sD=1;
    #10;
    sC=1; sD=0;
    #10;
    sD=1;
    
end

endmodule
