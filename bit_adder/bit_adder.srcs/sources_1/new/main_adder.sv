`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/17/2022 08:41:12 AM
// Module Name: main_adder
// Project Name: RCA with error detection
// Target Devices: Basys3
// Description: The given circuit performs addition and subtraction and detects the
//overflow/underflow condition if it is present
//////////////////////////////////////////////////////////////////////////////////


module main_adder(
    input [3:0] Ain,
    input [3:0] Bin,
    input sub, 
    output [3:0] result,
    output error,
    output l1
    );
    
    logic A1,A2,A3,A4;
    
    bitAdder add1(
    .A(Ain[0]), .B((Bin[0]^sub)),
    .Cin(sub), .sum(result[0]),
    .Cout(A1)
    );
    bitAdder add2(
    .A(Ain[1]), .B((Bin[1]^sub)),
    .Cin(A1), .sum(result[1]),
    .Cout(A2)
    );
    bitAdder add3(
    .A(Ain[2]), .B((Bin[2]^sub)),
    .Cin(A2), .sum(result[2]),
    .Cout(A3)
    );
    bitAdder add4(
    .A(Ain[3]), .B((Bin[3]^sub)),
    .Cin(A3), .sum(result[3]),
    .Cout(l1)
    );  
    //anything that floats over 4bit and 
	//get in Cout, pull up error.
    //if result[3] is zero and there 
	//is a floating number that would give error
    // say 1,1101 = has 1 floating number but 
	//value would still be -3
    //but say 1,0001 = has one floating value, 
	//in 2's comp it is 15 but module error
    //would make it +1.
    
    //to fix this we can set 
	//error = (floating number==1 && result[3]!=1)
    //doesn't count error for adding (5+3 = -8) and 
	//gives error for adding (-1+1 =0)
    
    //if floating number and last carry are same there 
	//is no error, but their diff val
    //gives error
	
    assign error = (l1^A3);
endmodule
