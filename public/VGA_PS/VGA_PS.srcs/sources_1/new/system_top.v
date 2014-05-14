`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2014 10:18:56 AM
// Design Name: 
// Module Name: system_top
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


module system_top(
    input      clk_100,           
    output     [3:0] vga_r,
    output     [3:0] vga_g,
    output     [3:0] vga_b,
    output     vga_hs,
    output     vga_vs,
    output     hdmi_clk,
    output     hdmi_hsync,
    output     hdmi_vsync,
    output     [15:0] hdmi_d,
    output     hdmi_de,
    output     hdmi_scl,
    inout      hdmi_sda);
    
    wire [10:0] col;
    wire [9:0] row;
    wire [3:0] color;
    
    vga_hdmi vga_i(
        .color(color),
        .col(col),
        .row(row),
        .valid(valid),
        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b),
        .vga_hs(vga_hs),
        .hdmi_clk(hdmi_clk),
        .hdmi_hsync(hdmi_hsync),
        .hdmi_vsync(hdmi_vsync),
        .hdmi_d(hdmi_d),
        .hdmi_de(hdmi_de),
        .hdmi_scl(hdmi_scl),
        .hdmi_sda(hdmi_sda));
        
    system_wrapper system_wrapper_i(
        .out_col(col),
        .out_row(row),
        .out_color(color),
        .valid(valid));
    
endmodule
