`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 10/17/2022 08:41:12 AM
// Module Name: single_bit_fliFlop
// Project Name: basic memory
// Target Devices: Basys3
// Description: The given circuit stores the single bit in register and performs
// reset operation synchronous and asynchronously.
//////////////////////////////////////////////////////////////////////////////////



module single_bit_fliFlop(
    input logic D,clk,SRST,ARST,
    output logic Q
    );
    
    always_ff @(posedge clk or posedge ARST)
    begin 
	//if aync is turned on
        if(ARST ==1)
        begin
            Q<=0;
        end
		//if clock is high
        else if(clk==1)
        begin
            if(SRST==1)
            begin
                Q<=0;
            end
            else
			//original value
            begin
                Q<=D;
            end
        end
		//original value when none of the above states are true
        else
        begin
            Q<=D;
        end
    end
endmodule
