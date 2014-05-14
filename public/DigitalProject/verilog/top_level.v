// File top_level.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 1995

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002, 2005, 2008-2010 Larry Doolittle - LBNL
//     http://doolittle.icarus.com/~larry/vhd2vl/
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

//--------------------------------------------------------------------------------
// Engineer: Mike Field <hamster@snap.net.nz>
// 
// Module Name: top_level - Behavioral 
// Description: Top level module of the Zedboard OV7670 design
//
//--------------------------------------------------------------------------------
// no timescale needed

module top_level(
clk100,
btnl,
btnc,
btnr,
config_finished,
vga_hsync,
vga_vsync,
vga_r,
vga_g,
vga_b,
ov7670_pclk,
ov7670_xclk,
ov7670_vsync,
ov7670_href,
ov7670_data,
ov7670_sioc,
ov7670_siod,
ov7670_pwdn,
ov7670_reset
);

input clk100;
input btnl;
input btnc;
input btnr;
output config_finished;
output vga_hsync;
output vga_vsync;
output [3:0] vga_r;
output [3:0] vga_g;
output [3:0] vga_b;
input ov7670_pclk;
output ov7670_xclk;
input ov7670_vsync;
input ov7670_href;
input [7:0] ov7670_data;
output ov7670_sioc;
inout ov7670_siod;
output ov7670_pwdn;
output ov7670_reset;

wire clk100;
wire btnl;
wire btnc;
wire btnr;
wire config_finished;
wire vga_hsync;
wire vga_vsync;
wire [3:0] vga_r;
wire [3:0] vga_g;
wire [3:0] vga_b;
wire ov7670_pclk;
wire ov7670_xclk;
wire ov7670_vsync;
wire ov7670_href;
wire [7:0] ov7670_data;
wire ov7670_sioc;
wire ov7670_siod;
wire ov7670_pwdn;
wire ov7670_reset;


wire clk_camera;
wire clk_vga;
wire wren;
wire resend;
wire nBlank;
wire vSync;
wire nSync;
wire [18:0] wraddress;
wire [11:0] wrdata;
wire [18:0] rdaddress;
wire [11:0] rddata;
wire [7:0] red; wire [7:0] green; wire [7:0] blue;
wire activeArea;
wire rez_160x120;
wire rez_320x240;

  assign vga_r = red[7:4];
  assign vga_g = green[7:4];
  assign vga_b = blue[7:4];
  assign rez_160x120 = btnl;
  assign rez_320x240 = btnr;
  // For the Nexys2  
  //	Inst_vga_pll: vga_pll PORT MAP(
  //		inclk0 => clk50,
  //		c0 => clk_camera,
  //		c1 => clk_vga
  //	);
  vga_pll_zedboard inst_vga_pll(
      .CLK100(CLK100),
    .CLK50_camera(CLK_camera),
    .CLK25_vga(CLK_vga));

  assign vga_vsync = vsync;
  VGA Inst_VGA(
      .CLK25(clk_vga),
    .rez_160x120(rez_160x120),
    .rez_320x240(rez_320x240),
    .clkout(/* open */),
    .Hsync(vga_hsync),
    .Vsync(vsync),
    .Nblank(nBlank),
    .Nsync(nsync),
    .activeArea(activeArea));

  debounce Inst_debounce(
      .clk(clk_vga),
    .i(btnc),
    .o(resend));

  ov7670_controller Inst_ov7670_controller(
      .clk(clk_camera),
    .resend(resend),
    .config_finished(config_finished),
    .sioc(ov7670_sioc),
    .siod(ov7670_siod),
    .reset(ov7670_reset),
    .pwdn(ov7670_pwdn),
    .xclk(ov7670_xclk));

  frame_buffer Inst_frame_buffer(
      .rdaddress(rdaddress),
    .rdclock(clk_vga),
    .q(rddata),
    .wrclock(ov7670_pclk),
    .wraddress(wraddress[18:0]),
    .data(wrdata),
    .wren(wren));

  ov7670_capture Inst_ov7670_capture(
      .pclk(ov7670_pclk),
    .rez_160x120(rez_160x120),
    .rez_320x240(rez_320x240),
    .vsync(ov7670_vsync),
    .href(ov7670_href),
    .d(ov7670_data),
    .addr(wraddress),
    .dout(wrdata),
    .we(wren));

  RGB Inst_RGB(
      .Din(rddata),
    .Nblank(activeArea),
    .R(red),
    .G(green),
    .B(blue));

  Address_Generator Inst_Address_Generator(
      .CLK25(clk_vga),
    .rez_160x120(rez_160x120),
    .rez_320x240(rez_320x240),
    .enable(activeArea),
    .vsync(vsync),
    .address(rdaddress));


endmodule
