`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge
// 
// Create Date: 02/01/2014 03:24:29 PM
// Design Name: 3-digit add and sub calculator
// Module Name: keyConverter
// Project Name: Advanced Digital Design - lab2
// Target Devices: ZedBoard
// Tool Versions: Vivado 13.4 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module keyConverter(
    input [3:0] row,
    input [3:0] col,
    output reg [3:0] key
    );
    
    always @(*)
    begin
        case (row)
            4'b1110:
                case (col)
                    4'b1110:
                        key <= 4'd1;
                    4'b1101:
                        key <= 4'd2;
                    4'b1011:
                        key <= 4'd3;
                    4'b0111: // A = add
                        key <= 4'd10;
                    default:
                        key <= 4'b1111;
                endcase
            4'b1101:
                case (col)
                    4'b1110:
                        key <= 4'd4;
                    4'b1101:
                        key <= 4'd5;
                    4'b1011:
                        key <= 4'd6;
                    4'b0111: // B = sub
                        key <= 4'd11;
                    default:
                        key <= 4'b1111;
                endcase
            4'b1011:
                case (col)
                    4'b1110:
                        key <= 4'd7;
                    4'b1101:
                        key <= 4'd8;
                    4'b1011:
                        key <= 4'd9;
                    4'b0111: // C = clear
                        key <= 4'd12;
                    default:
                        key <= 4'b1111;
                endcase
            4'b0111:
                case (col)
//                    4'b1110: // *
//                        key <= 4'd14;
                    4'b1101:
                        key <= 4'd0;
                    4'b1011: // # = =
                        key <= 4'd13;
//                    4'b0111: // D
//                        key <= 4'd15;
                    default:
                        key <= 4'b1111;
                endcase
            default:
                key <= 4'b1111;
        endcase
    end
endmodule
