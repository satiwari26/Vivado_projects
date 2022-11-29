`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2022 07:27:00 PM
// Design Name: 
// Module Name: RC_add
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


module RC_add( input logic [3:0] A,B,
    output logic [4:0] result,
    input logic sub
);
    //carry bit adders
    logic Cin;
    logic Cout;
    //declaring int variable for each bit counter
    int i;
    //combinational block
    always_comb
        begin
        //using for loop to iterate through each 
            for(i=0;i<4;i++)
                begin
                    if(i==0)
                        begin
                            Cin=sub;
                        end
                    else
                        begin
                            Cin=Cout;
                        end
                    {Cout,result[i]} = A[i]+(B[i]^sub)+Cin;
                    //result[i] = (~A[i]&B[i]&~Cin)|(A[i]&Cin)|(Cin&~B[i]);
                    //Cout = (Cin&B[i])|(A[i]&B[i])|(A[i]&Cin);
                end
            result[4] = (~(Cout^Cin)&result[3])|(Cout&(Cout^Cin));
        
        end
endmodule
