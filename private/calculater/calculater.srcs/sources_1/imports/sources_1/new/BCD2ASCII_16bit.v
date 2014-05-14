`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2014 02:30:22 PM
// Design Name: 
// Module Name: BCD2ASCII
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


module BCD2ASCII_16bit(
    input [15:0] bcd_in,
    output [7:0] ones_ascii, tens_ascii, hundreds_ascii, thousands_ascii
    );
                
    //Offsets a value to the ASCII hex character for a '0' (0x30)
    //Meant to be added to individual BCD digits to shift to correct ASCII representation
    //  for numbers 0 - 9
    parameter ASCII_OFFSET = 8'h30;


	assign ones_ascii 		= {4'h0, bcd_in[3:0]}	+ ASCII_OFFSET;
	assign tens_ascii       = {4'h0, bcd_in[7:4]}	+ ASCII_OFFSET;
    assign hundreds_ascii   = {4'h0, bcd_in[11:8]}	+ ASCII_OFFSET;
    assign thousands_ascii  = {4'h0, bcd_in[15:12]}	+ ASCII_OFFSET; 
    
endmodule
