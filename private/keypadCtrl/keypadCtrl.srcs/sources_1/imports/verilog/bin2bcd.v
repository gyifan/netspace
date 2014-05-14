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
//      bin2bcd module takes binary input and convert it into binary coded decimal.
// The submodule add3 take 4 bits binary and adds 3 if it's greater than 5. add3 
// is used in the bin2bcd. bin2bcd takes a 6 bit value and outputs one bcd for 
// tens digit and one bcd for ones digit.
//
// Dependencies: 
//      n/a
// Revision:
// Revision 0.01 - File Created
// Additional Comments: n/a
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
* Purpose: input a 5-bit binary number, and convert that number 
* into two 4-bit binary coded decimal representing the one's digit
* and ten's digit.
*
* Input: [5:0] binary 
* outputs:
*   [3:0] bcdOnes
*   [3:0] bcdTens
**/ 

module bin2bcd(
    input [5:0] binary,
    output [3:0] bcdOnes,
    output [3:0] bcdTens
    );
    
    wire [3:0] c1, c2, c3; // These are the carry bits after add 3
    add3 m1({1'b0,binary[5:3]}, c1); 
    add3 m2({c1[2:0], binary[2]}, c2);
    add3 m3({c2[2:0], binary[1]}, c3);
    
    assign bcdTens = {1'b0, c1[3], c2[3], c3[3]};
    assign bcdOnes = {c3[2:0], binary[0]};
    
endmodule 