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


module NOR_sim();

logic sR,sS,sQ,sQN;

NOR UUT( .R(sR),.S(sS),.Q(sQ),.QN(sQN));

initial begin 
sR = 0;
sS = 0;
#100 //100n
sS=1;
#100; //200ns
sS=0;
#100; //300ns
sR =1;
#100; //400ns
sR=0;
#100; //500ns
sR=1;
sS=1;
#100; //600ns
sS=0;
#1;
sR=0;
#100; //700ns   
sR=1;
sS=1;

end
endmodule
