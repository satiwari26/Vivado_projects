`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Saumitra Tiwari
// 
// Create Date: 11/15/2022 08:41:12 AM
// Module Name: counter
// Project Name: clocks and counter
// Target Devices: Basys3
// Description: The given circuit creates a counter that counts in both positive
// and negative direction.
//////////////////////////////////////////////////////////////////////////////////


module counter(
output logic[3:0] counter,
input logic CEN, RST,DIR,clk);
//initialize counter to 0
//assign counter =0;
always_ff @(posedge clk)
begin 
//count only when enable is on
    if(CEN==1&&clk==1)
    begin
        //count up
        if(DIR==0)
        begin
        //reset it to 0
            if(RST==1)
            begin
                counter<=0;
            end
            else if(RST==0)
        //count upward
            begin
                counter <= counter+1;
            end
        end
        else
        //count down
        begin
            //reset to 15
            //assign counter = 4'b1111;
            if(RST==1)
            begin
                counter<=4'b1111;
            end
            else if(RST==0)
            //start counting down
            begin
                counter <= counter-1;
            end
        end
    end
    //if enable is off set counter = counter
    else
    begin
        counter<=counter;
    end
end
    
    
endmodule
