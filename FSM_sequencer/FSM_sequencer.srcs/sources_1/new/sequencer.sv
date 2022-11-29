`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2022 02:33:58 PM
// Design Name: 
// Module Name: sequencer
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


module sequencer(
    input logic clk,En,RST,
    output logic [6:0]Cth,
    output logic [3:0]An
);

    typedef enum{one,seven,zero,one1}state_type;
    state_type PS,NS;

    //clk in seconds if needed
    logic second_clk=0;
    logic [31:0] count;
    always_ff @(posedge clk)
    begin
    if(count==50000000)
    begin
    second_clk<=~second_clk;
    count<=0;
    end
    else if(count<50000000)
    begin
    count<=count+1;
    end
    else
    begin
    count<=0;
    end
    end
    //end of clk in seconds
    

    //creating register using sequential block
    always_ff @(posedge second_clk or posedge RST)
    begin
    if(RST==1)
    begin
    PS<=one;
    end
    else 
    begin
    PS<=NS;
    end
    end
    
    //combination block to perfrom the rest of the task
    always_comb
    begin
        case(PS)
        one:begin
            if(En==0)
            begin
                NS=one;
            end
            else
            begin
                NS=seven;
            end
        end
        seven:begin
            if(En==0)
            begin
                NS=seven;
            end
            else
            begin
                NS=zero;
            end
        end
        zero:begin
            if(En==0)
            begin
                NS=zero;
            end
            else
            begin
                NS=one1;
            end
        end
        one1:begin
            if(En==0)
            begin
                NS=one1;
            end
            else
            begin
                NS=one;
            end
        end
        default:begin
            NS=one;
        end
        endcase
    end
    
    //displaying the sequence on number
    
    always_comb
    begin
    case(PS)
        one:begin
            Cth=7'b1001111;
             An = 4'b1110;
        end
        seven:begin
            Cth=7'b1111000;
             An = 4'b1110;
        end
        zero:begin
            Cth=7'b1000000;
             An = 4'b1110;
        end
        one1:begin
            Cth=7'b1001111;
             An = 4'b1110;
        end
        default:begin
        Cth=7'b1000000;
             An = 4'b1110;
        end
    endcase
    end


endmodule
