`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 02:18:11 PM
// Design Name: 
// Module Name: JudgePanel_sim
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


module JudgePanel_sim();

logic sJ1, sJ2, sJ3, sJ4, sJ5, sP, sF;

JudgePanel_Module UUT (.J1(sJ1), .J2(sJ2), .J3(sJ3), .J4(sJ4), .J5(sJ5), .P(sP), .F(sF));

initial begin

sJ1=0; sJ2 = 0; sJ3=0; sJ4 =0; sJ5=0;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=0; sJ3=1;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;
#10;
sJ2=1; sJ3=0; sJ4=0; sJ5=0;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;
#10;
sJ3=1; sJ5=0; sJ4=0;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;
#10;
sJ1=1; sJ5=0; sJ4=0; sJ3=0; sJ2=0;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;
#10;
sJ3=1; sJ5=0; sJ4=0;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;
#10;
sJ5=0; sJ3=0; sJ4=0; sJ2=1;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=0; sJ3=1;
#10;
sJ5=1;
#10;
sJ5=0; sJ4=1;
#10;
sJ5=1;

end

endmodule
