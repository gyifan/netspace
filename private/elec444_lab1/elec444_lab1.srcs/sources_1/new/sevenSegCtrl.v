`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge, Tom Ludwi
// 
// Create Date: 01/23/2014 10:36:36 AM
// Design Name: 
// Module Name: sevenSegCtrl
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
