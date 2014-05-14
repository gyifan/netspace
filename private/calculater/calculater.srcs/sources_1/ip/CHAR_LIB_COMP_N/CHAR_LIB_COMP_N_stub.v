// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Wed Feb 12 13:53:37 2014
// Host        : DANA307-05 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               u:/private/ELEC444/lab2/lab2.srcs/sources_1/ip/CHAR_LIB_COMP_N/CHAR_LIB_COMP_N_stub.v
// Design      : CHAR_LIB_COMP_N
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module CHAR_LIB_COMP_N(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[10:0],douta[7:0]" */;
  input clka;
  input ena;
  input [10:0]addra;
  output [7:0]douta;
endmodule
