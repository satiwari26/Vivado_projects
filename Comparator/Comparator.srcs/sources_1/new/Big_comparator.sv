`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2022 09:20:03 AM
// Design Name: 
// Module Name: Big_comparator
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


module Big_comparator(
    input [7:0] A,
    input [7:0] B,
    output greater,
    output less,
    output equal
    );
    logic l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l20,l21,l22,l23,l24;
    small_comparator val1(
    .P(A[0]),
    .Q(B[0]),
    .GTI(0),
    .LTI(0),
    .EQI(1),
    .GTO(l4),
    .LTO(l5),
    .EQO(l6));
    
    small_comparator val2(
    .P(A[1]),
    .Q(B[1]),
    .GTI(l4),
    .LTI(l5),
    .EQI(l6),
    .GTO(l7),
    .LTO(l8),
    .EQO(l9));
    
    small_comparator val3(
    .P(A[2]),
    .Q(B[2]),
    .GTI(l7),
    .LTI(l8),
    .EQI(l9),
    .GTO(l10),
    .LTO(l11),
    .EQO(l12));
    
    small_comparator val4(
    .P(A[3]),
    .Q(B[3]),
    .GTI(l10),
    .LTI(l11),
    .EQI(l12),
    .GTO(l13),
    .LTO(l14),
    .EQO(l15));
    
    small_comparator val5(
    .P(A[4]),
    .Q(B[4]),
    .GTI(l13),
    .LTI(l14),
    .EQI(l15),
    .GTO(l16),
    .LTO(l17),
    .EQO(l18));
    
    small_comparator val6(
    .P(A[5]),
    .Q(B[5]),
    .GTI(l16),
    .LTI(l17),
    .EQI(l18),
    .GTO(l19),
    .LTO(l20),
    .EQO(l21));
    
    small_comparator val7(
    .P(A[6]),
    .Q(B[6]),
    .GTI(l19),
    .LTI(l20),
    .EQI(l21),
    .GTO(l22),
    .LTO(l23),
    .EQO(l24));
    
    small_comparator val8(
    .P(A[7]),
    .Q(B[7]),
    .GTI(l22),
    .LTI(l23),
    .EQI(l24),
    .GTO(greater),
    .LTO(less),
    .EQO(equal));
    
endmodule
