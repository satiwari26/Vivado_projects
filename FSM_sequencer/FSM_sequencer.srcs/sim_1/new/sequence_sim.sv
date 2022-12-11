`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2022 02:58:41 PM
// Design Name: 
// Module Name: sequence_sim
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


module sequence_sim();

     logic clk,En,RST;
     logic [6:0]Cth;
     logic [3:0]An;
     
     sequencer UUT(.clk(clk),.En(En),.RST(RST),.Cth(Cth),.An(An));
     
     initial begin
     clk=0;
     RST=1;
     En=1;
     #20;
     RST=0;
     #60;
     En=0;
     #40;
     RST=1;
     #20;
     RST=0;
     #40;
     En=1;
     #30;
     RST=1;
     #10;
     RST=0;
     #20;
     En = 0;
     #20;
     En = 1;
     #40;
     En=0;
     end
     
     always #5 clk=~clk;

endmodule
