`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2022 05:02:58 PM
// Design Name: 
// Module Name: counter_sim
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


module counter_sim();
logic sCEN,sRST,sDIR,sclk;
logic [3:0]scounter;

counter UUT(
.CEN(sCEN),.RST(sRST),.DIR(sDIR),
.clk(sclk),.counter(scounter));

initial begin
sclk=0;
#10;
sRST=1;
sclk=1;
sCEN=1;
sDIR=0;
#10;
sRST=1;
sCEN=1;
sDIR=0;
sclk=0;
#10;
sRST=0;
sclk=1;
#10;
sclk=0;
#10;
sclk=1;
#10;
sclk=0;
#10;
sclk=1;
#10;
sRST=1;
sclk=0;
sCEN=1;
sDIR=1;
#10;
sclk=1;
#10;
sRST=0;
sclk=0;
#10;
sclk=1;
#10;
sclk=0;
#10;
sclk=1;
#10;
sclk=0;
#10;
sclk=1;
#10;
sclk=0;
#10;
sclk=1;
#10;
sCEN=1;
sclk=0;
#10;
sclk=1;
#10;
sclk=0;
#10;
sclk=1;
#10;
sclk=0;
sCEN=0;
#10;
sclk=1;
#10;
sclk=0;
#10;
sclk=1;
#10;
end

endmodule
