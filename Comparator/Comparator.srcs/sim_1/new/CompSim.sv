`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 7: 
// 
// Create Date: 10/12/2022 12:18:06 PM
// Design Name: 
// Module Name: CompSim
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


module CompSim();

	logic [7:0] sA;
	logic [7:0] sB;
	logic sgreater, sless,sequal;
	
	Big_comparator UUT(
	.A(sA), .B(sB), .greater(sgreater), .less(sless), .equal(sequal));
	
	initial begin 
	
		sA = 8'b00000000;
		sB = 8'b00000000;
		#10
		sA = 8'b00000001;
		sB = 8'b00000000;
		#10
		sA = 8'b00000000;
		sB = 8'b00000001;
		#10;
		sA = 8'b00010000;
		sB = 8'b00010100;
		#10;
		sA = 8'b10010000;
		sB = 8'b10010010;
		#10;
		sA = 8'b00010101;
		sB = 8'b10011011;
		#10;
		sA = 8'b11110010;
		sB = 8'b00010101;
		#10;
		sA = 8'b11111111;
		sB = 8'b11111111;
		#10;
		sA = 8'b11010110;
		sB = 8'b11011100;
		#10;
		sA = 8'b11110000;
		sB = 8'b11001101;
		#10;
		sA = 8'b11001000;
		sB = 8'b00110000;
		#10;
		sA = 8'b10010011;
		sB = 8'b10010100;
	
	
	end
	
endmodule
