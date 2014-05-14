`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge: 
// 
// Create Date: 02/09/2014 05:34:08 PM
// Design Name: 3-digit add and sub calculator
// Module Name: bin2bcdDec4
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

/**
* Code modified from example shown in the following website:
* http://people.ee.duke.edu/~dwyer/courses/ece52/Binary_to_BCD_Converter.pdf
* 
**/

/**
* module add3:
*
* Purpose: Input a 4-bit number, and if the number is greater than
* or equal to 5, add three to that number and store it into the output 
* reg [3:0] out.
*  
* Inputs:
* [3:0] in
* reg [3:0] out
**/

module add3(
input [3:0] in, 
output reg [3:0] out
);

always @ (in)
    case (in)
        4'b0000: out <= 4'b0000;
        4'b0001: out <= 4'b0001;
        4'b0010: out <= 4'b0010;
        4'b0011: out <= 4'b0011;
        4'b0100: out <= 4'b0100;
        4'b0101: out <= 4'b1000;
        4'b0110: out <= 4'b1001;
        4'b0111: out <= 4'b1010;
        4'b1000: out <= 4'b1011;
        4'b1001: out <= 4'b1100;
        default: out <= 4'b0000;
    endcase
endmodule


/**
* module bin2bcd 
* Purpose: input a 16-bit binary number, and convert that number 
* into four 4-bit binary coded decimal representing the one's digit,
* ten's digit, hundred's digit and thousand's digit.
*
* Input: [15:0] binary 
* outputs:
*   [3:0] bcdOnes
*   [3:0] bcdTens
*   [3:0] bcdHunds
*   [3:0] bcdThouds
**/ 

module bin2bcdDec4(
    input [15:0] binary,
    output [3:0] bcdOnes,
    output [3:0] bcdTens,
    output [3:0] bcdHunds,
    output [3:0] bcdThouds
    );
    
    wire [3:0] c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13;
    
    add3 m1({1'b0, binary[15:13]}, c1);
    add3 m2({c1[2:0], binary[12]}, c2);
    add3 m3({c2[2:0], binary[11]}, c3);
    add3 m4({c3[2:0], binary[10]}, c4);
    add3 m5({c4[2:0], binary[9]}, c5);
    add3 m6({c5[2:0], binary[8]}, c6);
    add3 m7({c6[2:0], binary[7]}, c7);
    add3 m8({c7[2:0], binary[6]}, c8);
    add3 m9({c8[2:0], binary[5]}, c9);
    add3 m10({c9[2:0], binary[4]}, c10);
    add3 m11({c10[2:0], binary[3]}, c11);
    add3 m12({c11[2:0], binary[2]}, c12);
    add3 m13({c12[2:0], binary[1]}, c13);
    
    assign bcdOnes = {c13[2:0], binary[0]};
    assign bcdTens = {c10[3], c9[3], c8[3], c7[3]};
    assign bcdHunds = {c6[3], c5[3], c4[3], c3[3]};
    assign bcdThouds = {2'b0, c1[3], c2[3]};
    
    
endmodule
