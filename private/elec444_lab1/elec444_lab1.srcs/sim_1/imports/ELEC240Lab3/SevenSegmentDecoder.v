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
    input [1:0] Digit,
    output reg [6:0] Segments,
    output reg [3:0] Anodes
    );
	 
	 //Segments = {a, b, c, d, e, f}
	 
	 always@*
	 begin
	 case(Decimal)
		//4'b0000: Segments = 7'b1111110; //0
		4'b0000: Segments = 7'b1111001;
		4'b0001: Segments = 7'b0010010;
		4'b0011: Segments = 7'b0110000;
		4'b0100: Segments = 7'b1101000;
		4'b0101: Segments = 7'b0100100;
		4'b0110: Segments = 7'b0011000;
		4'b0111: Segments = 7'b1110001;
		4'b1000: Segments = 7'b0000000;
		4'b1001: Segments = 7'b1100000;
		default: Segments = 7'b1111111;
		
		//4'b0001: Segments = 7'b0000110; //1
		//4'b0010: Segments = 7'b1101101; //2
		//4'b0011: Segments = 7'b1001111; //3
		//4'b0100: Segments = 7'b0010111; //4
		//4'b0101: Segments = 7'b1011011; //5
		//4'b0110: Segments = 7'b1100111; //6
		//4'b0111: Segments = 7'b0001110; //7
		//4'b1000: Segments = 7'b1111111; //8
		//4'b1001: Segments = 7'b0011111; //9
		//default: Segments = 7'b0000000; //For all other values, all segments will be dark
	 endcase
	 end
	 
	 always@*
	 begin
	 case(Digit)
		2'b00: Anodes = 4'b1110; //0's column
		2'b01: Anodes = 4'b1101; //10's column
		2'b10: Anodes = 4'b1011;//100's column
		2'b11: Anodes = 4'b0111; //1000's column
		default: Anodes = 4'b0000; 
	 endcase
	 end


endmodule
