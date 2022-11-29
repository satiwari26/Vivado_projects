`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2022 07:37:45 PM
// Design Name: 
// Module Name: decoder
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


module decoder(input logic[3:0]inseg,
            output logic Ca,Cb,Cc,Cd,Ce,Cf,Cg,
            output logic A0,A1,A2,A3
);
//assign constant value to 7 seg display to turn on only one of em
assign A0=0;
assign A1=1;
assign A2=1;
assign A3=1;

//procedural start
always_comb
    begin
    //case specifying segment list
    case(inseg)
    //should display 0
        4'b0000:begin
            Ca=0;Cb=0;Cc=0;Cd=0;Ce=0;Cf=0;Cg=1;
        end
        //should display 1
        4'b0001:begin
            Ca=1;Cb=1;Cc=1;Cd=1;Ce=0;Cf=0;Cg=1;
        end
        //should display 2
        4'b0010:begin
            Ca=0;Cb=0;Cc=1;Cd=0;Ce=0;Cf=1;Cg=0;
        end
        //should display 3
        4'b0011:begin
            Ca=0;Cb=0;Cc=0;Cd=0;Ce=1;Cf=1;Cg=0;
        end
        //should display 4
        4'b0100:begin
            Ca=1;Cb=0;Cc=0;Cd=1;Ce=1;Cf=0;Cg=0;
        end
        //should display 5
        4'b0101:begin
            Ca=0;Cb=1;Cc=0;Cd=0;Ce=1;Cf=0;Cg=0;
        end
        //should display 6
        4'b0110:begin
            Ca=0;Cb=1;Cc=0;Cd=0;Ce=0;Cf=0;Cg=0;
        end
        //should display 7
        4'b0111:begin
            Ca=0;Cb=0;Cc=0;Cd=1;Ce=1;Cf=1;Cg=1;
        end
        //should display 8
        4'b1000:begin
            Ca=0;Cb=0;Cc=0;Cd=0;Ce=0;Cf=0;Cg=0;
        end
        //should display 9
        4'b1001:begin
            Ca=0;Cb=0;Cc=0;Cd=0;Ce=1;Cf=0;Cg=0;
        end
        //should display A
        4'b1010:begin
            Ca=0;Cb=0;Cc=0;Cd=1;Ce=0;Cf=0;Cg=0;
        end
        //should display b
        4'b1011:begin
            Ca=1;Cb=1;Cc=0;Cd=0;Ce=0;Cf=0;Cg=0;
        end
        //should display C
        4'b1100:begin
            Ca=0;Cb=1;Cc=1;Cd=0;Ce=0;Cf=0;Cg=1;
        end
        //should display d
        4'b1101:begin
            Ca=1;Cb=0;Cc=0;Cd=0;Ce=0;Cf=1;Cg=0;
        end
        //should display E
        4'b1110:begin
            Ca=0;Cb=1;Cc=1;Cd=0;Ce=0;Cf=0;Cg=0;
        end
        //should display F
        4'b1111:begin
            Ca=0;Cb=1;Cc=1;Cd=1;Ce=0;Cf=0;Cg=0;
        end
        //default in case if didn't work
    default:begin
            Ca=0;Cb=0;Cc=0;Cd=0;Ce=0;Cf=0;Cg=0;
        end
        endcase
    end
endmodule
