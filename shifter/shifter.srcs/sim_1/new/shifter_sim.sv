`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2022 12:20:02 PM
// Design Name: 
// Module Name: shifter_sim
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


module shifter_sim();

logic [3:0] sinval, soutval;
logic [4:0] scontrol;

shifter UUT(
.inVal(sinval),.outVal(soutval),.control(scontrol)
);

initial begin

sinval = 4'b0101;
scontrol = 5'b11101;
#10;
sinval = 4'b0101;
scontrol = 5'b11110;
#10;
sinval = 4'b0101;
scontrol = 5'b11100;
#10;
sinval = 4'b0101;
scontrol = 5'b11111;
#10;
sinval = 4'b0101;
scontrol = 5'b10101;
#10;
sinval = 4'b0101;
scontrol = 5'b10110;
#10;
sinval = 4'b0101;
scontrol = 5'b10111;
#10;
sinval = 4'b0101;
scontrol = 5'b10001;
#10;
sinval = 4'b0101;
scontrol = 5'b01101;
#10;
sinval = 4'b0101;
scontrol = 5'b01110;
#10;
sinval = 4'b0101;
scontrol = 5'b01111;
#10;
sinval = 4'b0101;
scontrol = 5'b01100;
#10;
sinval = 4'b0101;
scontrol = 5'b00101;
#10;
sinval = 4'b0101;
scontrol = 5'b00110;
#10;
sinval = 4'b0101;
scontrol = 5'b00111;
#10;



end
endmodule
