`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2022 04:29:53 PM
// Design Name: 
// Module Name: JK_sim
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


module JK_sim();

logic sJ,sK,sclk,sRST,sARST,sQ;
JKk_flop UUT(.J(sJ),.K(sK),.clk(sclk),.SRST(sRST),.ARST(sARST),.Q(sQ)
);

initial begin
sclk =0;
sJ=1;
sK=0;
sRST=0;
sARST=0;
#10;
sclk =1;
#10;
sclk =0;
sJ=0;
sK=0;
sRST=0;
sARST=0;
#10;
sclk =1;
#10;
sclk =0;
sJ=0;
sK=1;
sARST=0;
sRST=1;
#10;
sclk=1;
#10;
sclk =0;
sJ=1;
sK=0;
sRST=0;
sARST=0;
#10;
sclk=1;
#10;
sclk =0;
sJ=0;
sK=0;
sRST=0;
sARST=0;
#10;
sclk =1;
sJ=0;
sK=1;
sARST=0;
sARST=0;
#10;
sclk=0;
sJ=0;
sK=1;
sRST=0;
sARST=1;
#10;
sclk=1;
sARST=0;
#10;
sJ=1;
sK=1;
sRST=0;
sARST=0;
sclk=0;
sRST=0;
sARST=0;
#10;
sclk=1;
#10;
end

endmodule
