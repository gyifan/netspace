`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge, Tom Ludwig
// 
// Create Date: 01/23/2014 08:24:13 AM
// Design Name: Number Guess Game
// Module Name: guessCounter
// Project Name: Advanced Digital Design
// Target Devices: ZedBoard
// Tool Versions: Vivado 2013.4
// Description: 
//      sevenSegCtrl module intake two 7-segment cathodes value and time
// multiplexing them to the anodes and cathodes output. 
// 
// Dependencies:
//      SevenSegmentDecoders
// 
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: n/a
// 
//////////////////////////////////////////////////////////////////////////////////


module sevenSegCtrl(
    input [6:0] ones,
    input [6:0] tens,
    input clk,
    output reg [1:0] anodes,
    output reg [6:0] cathodes
);
    
always @(posedge clk)
    case(anodes)
        2'b01: 
            begin 
                anodes <= 2'b10;
                cathodes <= tens;
            end
        2'b10:
            begin
                anodes <= 2'b01;
                cathodes <= ones;
            end
        default // default will only display ones digit
            begin
                anodes <= 2'b01;
                cathodes <= ones;
            end
     endcase
     
endmodule
