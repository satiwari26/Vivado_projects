`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/17/2022 08:41:12 AM
// Module Name: RC_adder
// Project Name: RC adder with 5-bit output
// Target Devices: Basys3
// Description: The given submodule add the two inputs and gives sum without
//generating any error
//////////////////////////////////////////////////////////////////////////////////


module RC_adder(
    input [3:0] Ain,
    input [3:0] Bin,
    input sub, 
	//5-bit output val
    output [4:0] result
    );
    
    logic A1,A2,A3,A4;
    bit_add add1(
    .A(Ain[0]), .B((Bin[0]^sub)),
    .Cin(sub), .sum(result[0]),
    .Cout(A1)
    );
    bit_add add2(
    .A(Ain[1]), .B((Bin[1]^sub)),
    .Cin(A1), .sum(result[1]),
    .Cout(A2)
    );
    bit_add add3(
    .A(Ain[2]), .B((Bin[2]^sub)),
    .Cin(A2), .sum(result[2]),
    .Cout(A3)
    );
    bit_add add4(
    .A(Ain[3]), .B((Bin[3]^sub)),
    .Cin(A3), .sum(result[3]),
    .Cout(A4)
    );
    
    //if 4th-msb value is 1 and cout is 1
    //it gives no error
    //sub causes error with and have to change it
    //coutA3 and A4 when are equal give error
    
    //if A4 =1 and result[2] = 1, result[4] = 1
    //if A4=0 and result[3] = 1, result[4] =1
    assign result[4] = (A4 & result[2])|(~A4 & result[3]);
    
endmodule
