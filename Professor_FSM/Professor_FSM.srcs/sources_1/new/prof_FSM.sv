`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 11/28/2022 08:41:12 AM
// Module Name: prof_FSM
// Project Name: FInite state machines
// Target Devices: Basys3
// Description: The given circuit design FSM that enters different states 
// based on the provided input.
//////////////////////////////////////////////////////////////////////////////////



module prof_FSM(
    input logic coffee,exam,clk,
    output logic grades, Hwork,
    output logic [6:0]Cth,
    output logic [3:0]An
    );
    
    typedef enum{netflix,housework,grading}state_type;
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
    logic RST = 1;
    always_ff @(posedge clk)
    begin
    if(RST==1)
    begin
    PS<=netflix;
    RST<=0;
    end
    else 
    begin
    PS<=NS;
    end
    end
    
    
    
    
    
    
    
    //combinational block to perform input and output function
    
    
    
    
    
    always_comb
    begin
    case(PS)
        netflix:begin
        grades=0;
        Hwork=0;
        if(coffee==0&&exam==0)
            begin
            NS=netflix;
            end
        else if(exam==1)
            begin
                NS=grading;
            end 
            else if(exam==0&&coffee==1)
            begin
                NS=housework;
            end
        else
        begin
            NS=netflix;
        end
        end
        grading:begin
        grades=1;
        Hwork=0;
        if(coffee==1&&exam==1)
            begin
                NS=grading;
            end
        else if(coffee==0)
            begin
            NS=netflix;
            end
        else if(coffee==1&&exam==0)
            begin
                NS=housework;
            end
        else
        begin
            NS=netflix;
        end
        end
        housework:begin
        Hwork=1;
        grades=0;
        if(coffee==1&&exam==0)
           begin
               NS=housework;
           end
        else if(exam==1)
            begin
                NS=grading;
            end
        else if(coffee==0&&exam==0)
            begin
                NS=netflix;
            end
        else
            begin
                NS=netflix;
            end
        end
        default:begin
        NS=netflix;
        Hwork=0;
        grades=0;
        end
    endcase
    end
    
    //assign state netflix=0, grading=1, housework=2
    //logic[1:0] state_number;
    
    //displaying current state on seven-segment
    
    //digit 0 constant anonde value
   
    always_comb
    begin
    case(PS)
        netflix:begin
        //display 0
            Cth=7'b1000000;
             An = 4'b1110;
        end
        grading:begin
        //display 1
            Cth=7'b1001111;
             An = 4'b1110;
        end
        housework:begin
        //display 2
            Cth=7'b0100100;
             An = 4'b1110;
        end
        default:begin
        //default display 0
        Cth=7'b1000000;
             An = 4'b1110;
        end
    endcase
    end
    
    
endmodule
