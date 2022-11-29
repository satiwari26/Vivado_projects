`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 08:17:53 AM
// Design Name: 
// Module Name: seven_seg_refresh
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


module seven_seg_refresh(
            //output logic Ca,Cb,Cc,Cd,Ce,Cf,Cg,
            output logic [6:0] Cth,
            //output logic A0,A1,A2,A3,
            output logic [3:0] An,
            input logic clk,
            input logic[3:0] digit1,digit2,digit3,digit4
    );
    
    
    logic [31:0] count;
    
    always_ff @(posedge clk)
    begin
       if(count==32'd200000)
       begin
       count<=1;
       end
       else if(count<32'd200000)
       begin
       count<=count+1;
       end
       else
       begin
       count<=0;
       end
    end
    
    logic refresh_clk=0;
    
    always_ff @(posedge clk)
    begin
    if(count==32'd200000)
    begin
    refresh_clk <= ~refresh_clk;
    end
    end
    
    
    
    logic [1:0] digit=2'b00;
    always_ff @(posedge refresh_clk)
    begin
        case(digit)
            2'b00:begin
                //Ca<=1;Cb<=1;Cc<=1;Cd<=1;Ce<=0;Cf<=0;Cg<=1;
                //Cth <= 7'b1111001;
                //{A0,A1,A2,A3} <= {1'b1,1'b1,1'b1,1'b0};
                case(digit1)
                4'b0000:begin
                //display 0
                Cth<=7'b0000001;
                end
                4'b0001:begin
                //display 1
                Cth<=7'b1111001;
                end
                4'b0010:begin
                //display 2
                Cth<=7'b0010010;
                end
                4'b0011:begin
                //display 3
                Cth<=7'b0000110;
                end
                4'b0100:begin
                //display 4
                Cth<=7'b1001100;
                end
                4'b0101:begin
                //display 5
                Cth<=7'b0100100;
                end
                4'b0110:begin
                //display 6
                Cth<=7'b0100000;
                end
                4'b0111:begin
                //display 7
                Cth<=7'b0001111;
                end
                4'b1000:begin
                //display 8
                Cth<=7'b0000000;
                end
                4'b1001:begin
                //display 9
                Cth<=7'b0000100;
                end
                4'b1010:begin
                //display A
                Cth<=7'b0001000;
                end
                4'b1011:begin
                //display b
                Cth<=7'b1100000;
                end
                4'b1100:begin
                //display C
                Cth<=7'b0110001;
                end
                4'b1101:begin
                //display d
                Cth<=7'b1000010;
                end
                4'b1110:begin
                //display E
                Cth<=7'b0110000;
                end
                4'b1111:begin
                //display F
                Cth<=7'b0111000;
                end
                default:begin
                Cth<=7'b0000000;
                end
                endcase
                An <= 4'b1110;
            end
            2'b01:begin
                //Ca<=0;Cb<=0;Cc<=1;Cd<=0;Ce<=0;Cf<=1;Cg<=0;
                //Cth <= 7'b0010010;
                //{A0,A1,A2,A3} <= {1'b1,1'b1,1'b0,1'b1};
                case(digit2)
                4'b0000:begin
                //display 0
                Cth<=7'b0000001;
                end
                4'b0001:begin
                //display 1
                Cth<=7'b1111001;
                end
                4'b0010:begin
                //display 2
                Cth<=7'b0010010;
                end
                4'b0011:begin
                //display 3
                Cth<=7'b0000110;
                end
                4'b0100:begin
                //display 4
                Cth<=7'b1001100;
                end
                4'b0101:begin
                //display 5
                Cth<=7'b0100100;
                end
                4'b0110:begin
                //display 6
                Cth<=7'b0100000;
                end
                4'b0111:begin
                //display 7
                Cth<=7'b0001111;
                end
                4'b1000:begin
                //display 8
                Cth<=7'b0000000;
                end
                4'b1001:begin
                //display 9
                Cth<=7'b0000100;
                end
                4'b1010:begin
                //display A
                Cth<=7'b0001000;
                end
                4'b1011:begin
                //display b
                Cth<=7'b1100000;
                end
                4'b1100:begin
                //display C
                Cth<=7'b0110001;
                end
                4'b1101:begin
                //display d
                Cth<=7'b1000010;
                end
                4'b1110:begin
                //display E
                Cth<=7'b0110000;
                end
                4'b1111:begin
                //display F
                Cth<=7'b0111000;
                end
                default:begin
                Cth<=7'b0000000;
                end
                endcase
                
                An <= 4'b1101;
            end
            2'b10:begin
                //Ca<=0;Cb<=0;Cc<=0;Cd<=0;Ce<=1;Cf<=1;Cg<=0;
                //Cth <= 7'b0000110;
                //{A0,A1,A2,A3} <= {1'b1,1'b0,1'b1,1'b1};
                
                case(digit3)
                4'b0000:begin
                //display 0
                Cth<=7'b0000001;
                end
                4'b0001:begin
                //display 1
                Cth<=7'b1111001;
                end
                4'b0010:begin
                //display 2
                Cth<=7'b0010010;
                end
                4'b0011:begin
                //display 3
                Cth<=7'b0000110;
                end
                4'b0100:begin
                //display 4
                Cth<=7'b1001100;
                end
                4'b0101:begin
                //display 5
                Cth<=7'b0100100;
                end
                4'b0110:begin
                //display 6
                Cth<=7'b0100000;
                end
                4'b0111:begin
                //display 7
                Cth<=7'b0001111;
                end
                4'b1000:begin
                //display 8
                Cth<=7'b0000000;
                end
                4'b1001:begin
                //display 9
                Cth<=7'b0000100;
                end
                4'b1010:begin
                //display A
                Cth<=7'b0001000;
                end
                4'b1011:begin
                //display b
                Cth<=7'b1100000;
                end
                4'b1100:begin
                //display C
                Cth<=7'b0110001;
                end
                4'b1101:begin
                //display d
                Cth<=7'b1000010;
                end
                4'b1110:begin
                //display E
                Cth<=7'b0110000;
                end
                4'b1111:begin
                //display F
                Cth<=7'b0111000;
                end
                default:begin
                Cth<=7'b0000000;
                end
                endcase
                
                An <=4'b1011;
            end
            2'b11:begin
                //Ca<=1;Cb<=0;Cc<=0;Cd<=1;Ce<=1;Cf<=0;Cg<=0;
                //Cth <= 7'b1001100;
                //{A0,A1,A2,A3} <= {1'b0,1'b1,1'b1,1'b1};
                
                case(digit4)
                4'b0000:begin
                //display 0
                Cth<=7'b0000001;
                end
                4'b0001:begin
                //display 1
                Cth<=7'b1111001;
                end
                4'b0010:begin
                //display 2
                Cth<=7'b0010010;
                end
                4'b0011:begin
                //display 3
                Cth<=7'b0000110;
                end
                4'b0100:begin
                //display 4
                Cth<=7'b1001100;
                end
                4'b0101:begin
                //display 5
                Cth<=7'b0100100;
                end
                4'b0110:begin
                //display 6
                Cth<=7'b0100000;
                end
                4'b0111:begin
                //display 7
                Cth<=7'b0001111;
                end
                4'b1000:begin
                //display 8
                Cth<=7'b0000000;
                end
                4'b1001:begin
                //display 9
                Cth<=7'b0000100;
                end
                4'b1010:begin
                //display A
                Cth<=7'b0001000;
                end
                4'b1011:begin
                //display b
                Cth<=7'b1100000;
                end
                4'b1100:begin
                //display C
                Cth<=7'b0110001;
                end
                4'b1101:begin
                //display d
                Cth<=7'b1000010;
                end
                4'b1110:begin
                //display E
                Cth<=7'b0110000;
                end
                4'b1111:begin
                //display F
                Cth<=7'b0111000;
                end
                default:begin
                Cth<=7'b0000000;
                end
                endcase
                
                An <= 4'b0111;
            end
            default:begin
                Cth <= 7'b0000000;
                //Ca<=0;Cb<=0;Cc<=0;Cd<=0;Ce<=0;Cf<=0;Cg<=0;
                An <= 4'b0000;
            //{A0,A1,A2,A3} <= {1'b0,1'b0,1'b0,1'b0};
            end
            endcase
            digit<=digit+1;
    end
endmodule
