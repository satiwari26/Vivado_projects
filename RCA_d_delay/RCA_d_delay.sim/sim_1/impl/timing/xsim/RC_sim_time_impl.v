// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Nov  2 17:01:43 2022
// Host        : LAPTOP-4970DKBC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/tiwar/OneDrive/Desktop/vivadoProjects/RCA_d_delay/RCA_d_delay.sim/sim_1/impl/timing/xsim/RC_sim_time_impl.v
// Design      : RC_adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "23e7dca9" *) 
(* NotValidForBitStream *)
module RC_adder
   (Ain,
    Bin,
    sub,
    result);
  input [7:0]Ain;
  input [7:0]Bin;
  input sub;
  output [8:0]result;

  wire A2;
  wire A4;
  wire A6;
  wire [7:0]Ain;
  wire [7:0]Ain_IBUF;
  wire [7:0]Bin;
  wire [7:0]Bin_IBUF;
  wire [8:0]result;
  wire [8:0]result_OBUF;
  wire sub;
  wire sub_IBUF;

initial begin
 $sdf_annotate("RC_sim_time_impl.sdf",,,,"tool_control");
end
  IBUF \Ain_IBUF[0]_inst 
       (.I(Ain[0]),
        .O(Ain_IBUF[0]));
  IBUF \Ain_IBUF[1]_inst 
       (.I(Ain[1]),
        .O(Ain_IBUF[1]));
  IBUF \Ain_IBUF[2]_inst 
       (.I(Ain[2]),
        .O(Ain_IBUF[2]));
  IBUF \Ain_IBUF[3]_inst 
       (.I(Ain[3]),
        .O(Ain_IBUF[3]));
  IBUF \Ain_IBUF[4]_inst 
       (.I(Ain[4]),
        .O(Ain_IBUF[4]));
  IBUF \Ain_IBUF[5]_inst 
       (.I(Ain[5]),
        .O(Ain_IBUF[5]));
  IBUF \Ain_IBUF[6]_inst 
       (.I(Ain[6]),
        .O(Ain_IBUF[6]));
  IBUF \Ain_IBUF[7]_inst 
       (.I(Ain[7]),
        .O(Ain_IBUF[7]));
  IBUF \Bin_IBUF[0]_inst 
       (.I(Bin[0]),
        .O(Bin_IBUF[0]));
  IBUF \Bin_IBUF[1]_inst 
       (.I(Bin[1]),
        .O(Bin_IBUF[1]));
  IBUF \Bin_IBUF[2]_inst 
       (.I(Bin[2]),
        .O(Bin_IBUF[2]));
  IBUF \Bin_IBUF[3]_inst 
       (.I(Bin[3]),
        .O(Bin_IBUF[3]));
  IBUF \Bin_IBUF[4]_inst 
       (.I(Bin[4]),
        .O(Bin_IBUF[4]));
  IBUF \Bin_IBUF[5]_inst 
       (.I(Bin[5]),
        .O(Bin_IBUF[5]));
  IBUF \Bin_IBUF[6]_inst 
       (.I(Bin[6]),
        .O(Bin_IBUF[6]));
  IBUF \Bin_IBUF[7]_inst 
       (.I(Bin[7]),
        .O(Bin_IBUF[7]));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(Ain_IBUF[0]),
        .I1(Bin_IBUF[0]),
        .O(result_OBUF[0]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h69966666)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(Ain_IBUF[1]),
        .I1(Bin_IBUF[1]),
        .I2(sub_IBUF),
        .I3(Ain_IBUF[0]),
        .I4(Bin_IBUF[0]),
        .O(result_OBUF[1]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(Ain_IBUF[2]),
        .I1(sub_IBUF),
        .I2(Bin_IBUF[2]),
        .I3(A2),
        .O(result_OBUF[2]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(Ain_IBUF[3]),
        .I1(Bin_IBUF[3]),
        .I2(A2),
        .I3(Ain_IBUF[2]),
        .I4(Bin_IBUF[2]),
        .I5(sub_IBUF),
        .O(result_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDE48D8D8)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(Bin_IBUF[1]),
        .I1(Ain_IBUF[1]),
        .I2(sub_IBUF),
        .I3(Ain_IBUF[0]),
        .I4(Bin_IBUF[0]),
        .O(A2));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(Ain_IBUF[4]),
        .I1(sub_IBUF),
        .I2(Bin_IBUF[4]),
        .I3(A4),
        .O(result_OBUF[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(Ain_IBUF[5]),
        .I1(Bin_IBUF[5]),
        .I2(A4),
        .I3(Ain_IBUF[4]),
        .I4(Bin_IBUF[4]),
        .I5(sub_IBUF),
        .O(result_OBUF[5]));
  LUT6 #(
    .INIT(64'hD444DDD4EEE8E888)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(Bin_IBUF[3]),
        .I1(Ain_IBUF[3]),
        .I2(A2),
        .I3(Ain_IBUF[2]),
        .I4(Bin_IBUF[2]),
        .I5(sub_IBUF),
        .O(A4));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(Ain_IBUF[6]),
        .I1(sub_IBUF),
        .I2(Bin_IBUF[6]),
        .I3(A6),
        .O(result_OBUF[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(Ain_IBUF[7]),
        .I1(Bin_IBUF[7]),
        .I2(A6),
        .I3(Ain_IBUF[6]),
        .I4(Bin_IBUF[6]),
        .I5(sub_IBUF),
        .O(result_OBUF[7]));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  LUT6 #(
    .INIT(64'h5DDF0115ABBF088A)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(sub_IBUF),
        .I1(Bin_IBUF[6]),
        .I2(Ain_IBUF[6]),
        .I3(A6),
        .I4(Ain_IBUF[7]),
        .I5(Bin_IBUF[7]),
        .O(result_OBUF[8]));
  LUT6 #(
    .INIT(64'hD444DDD4EEE8E888)) 
    \result_OBUF[8]_inst_i_2 
       (.I0(Bin_IBUF[5]),
        .I1(Ain_IBUF[5]),
        .I2(A4),
        .I3(Ain_IBUF[4]),
        .I4(Bin_IBUF[4]),
        .I5(sub_IBUF),
        .O(A6));
  IBUF sub_IBUF_inst
       (.I(sub),
        .O(sub_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
