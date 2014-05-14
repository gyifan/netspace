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


module BCD2ASCII_4bit(
    input [3:0] bcd_in,
    output reg [7:0] ascii_out
    );

    //Offsets a value to the ASCII hex character for a '0' (0x30)
    //Meant to be added to individual BCD digits to shift to correct ASCII representation
    //  for numbers 0 - 9
    parameter 	ASCII_OFFSET = 8'h30;
    parameter 	PLUS_SIGN = 8'h2B,
    			MINUS_SIGN = 8'h2D,
    			EQUAL_SIGN = 8'h3D;
    
    //Check for special characters
    always @ (*)
    	case ({4'h0, bcd_in} + ASCII_OFFSET)
    		8'h3a:	ascii_out = PLUS_SIGN;
    		8'h3b:	ascii_out = MINUS_SIGN;
    		8'h3d:	ascii_out = EQUAL_SIGN;
    		default: ascii_out = {4'h0, bcd_in} + ASCII_OFFSET;
    	endcase
endmodule
