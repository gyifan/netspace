// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Thu Mar 13 02:22:38 2014
// Host        : DANA307-08 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               u:/public/Lab5_Files_Ge/vga_display/vga_display.srcs/sources_1/ip/color_map/color_map_stub.v
// Design      : color_map
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module color_map(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[16:0],dina[3:0],clkb,enb,addrb[16:0],doutb[3:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [16:0]addra;
  input [3:0]dina;
  input clkb;
  input enb;
  input [16:0]addrb;
  output [3:0]doutb;
endmodule
