`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/17/2022 08:41:12 AM
// Module Name: bitadder
// Project Name: RCA with error detection
// Target Devices: Basys3
// Description: The given submodule add the two inputs and gives sum
//////////////////////////////////////////////////////////////////////////////////


module bitAdder(input A,B,Cin,output Cout,sum
    );
    
    assign Cout = (~A&B&Cin)|(A&~B&Cin)|(A&B&~Cin)|(A&B&Cin);
    assign sum = (~A&~B&Cin)|(~A&B&~Cin)|(A&~B&~Cin)|(A&B&Cin);
    
endmodule
