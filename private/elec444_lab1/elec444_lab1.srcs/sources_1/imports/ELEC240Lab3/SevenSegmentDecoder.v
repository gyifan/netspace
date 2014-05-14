`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AMERICA
// Engineer: Thomas Ludwig
// 
// Create Date:    08:30:31 02/07/2013 
// Design Name: 
// Module Name:    SevenSegmentDecoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SevenSegmenDecoder(
    input [3:0] Decimal,
    output reg [6:0] Segments
    );
	 
	 //Segments = {a, b, c, d, e, f, g}
	 
	 always@*
	 begin
	 case(Decimal)
        4'b0000: Segments = 7'b0000001; // 0
        4'b0001: Segments = 7'b1001111; // 1
        4'b0010: Segments = 7'b0010010; // 2
        4'b0011: Segments = 7'b0000110; // 3
        4'b0100: Segments = 7'b1001100; // 4
        4'b0101: Segments = 7'b0100100; // 5
        4'b0110: Segments = 7'b0100000; // 6
        4'b0111: Segments = 7'b0001111; // 7
        4'b1000: Segments = 7'b0000000; // 8
        4'b1001: Segments = 7'b0000100; // 9
        default: Segments = 7'bxxxxxxx;
	 
	 endcase
	 end

endmodule
