`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 02:38:38 PM
// Design Name: 
// Module Name: NAND_sim
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


module NAND_sim();

logic sR,sS,sQ,sQN;

NAND UUT( .R(sR),.S(sS),.Q(sQ),.QN(sQN));

initial begin 
sR = 1;
sS = 1;
#100 //100n
sS=0;
#100; //200ns
sS=1;
#100; //300ns
sR =0;
#100; //400ns
sR=1;
#100; //500ns
sR=0;
sS=0;
#100; //600ns
sS=1;
#1;
sR=1;
#100; //700ns   
sR=0;
sS=0;

end
endmodule
