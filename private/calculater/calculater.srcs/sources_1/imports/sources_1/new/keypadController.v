`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Bucknell University
// Engineer: Yifan Ge
// Teammates: Anthony Carno, Tom Ludwis
// 
// Create Date: 02/01/2014 02:47:56 PM
// Design Name: 3-digit add and sub calculator
// Module Name: keypadController
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


module keypadController(
    input clk,
    input slowClock,
    input [3:0] rows,
    output [3:0] columns,
    output reg [3:0] rowOut,
    output reg [3:0] colOut,
    output valid
    );
    
    wire slowestClk;
    wire [3:0] row_bouncer;
    wire enable;
    
    reg [3:0] row_in;
    reg [3:0] col_in;
    reg [3:0] shifter = 4'b1110;
    
    // Set up the columns scanner with the shift register.
    assign columns = shifter;
    
    // Set enable when any of the row value is pulled down.
    assign enable = ~&row_bouncer;
    
    // Set bit to indicate when the button is pressed.
    assign valid = enable;
    
    // Set up a slower clock for column scanner
    slowclock #(20) slowest(
        .clock(clk),
        .slowClockValue(slowestClk));

    // Debouncer module for each input pin.
    debouncer debouncer_0(
        .slowClock(slowClock),
        .reset(1'b0),
        .inputButton(rows[0]),
        .outputButton(row_bouncer[0]));
        
    debouncer debouncer_1(
        .slowClock(slowClock),
        .reset(1'b0),
        .inputButton(rows[1]),
        .outputButton(row_bouncer[1]));
        
    debouncer debouncer_2(
        .slowClock(slowClock),
        .reset(1'b0),
        .inputButton(rows[2]),
        .outputButton(row_bouncer[2]));
        
    debouncer debouncer_3(
        .slowClock(slowClock),
        .reset(1'b0),
        .inputButton(rows[3]),
        .outputButton(row_bouncer[3]));
    
    // Update the next value when enable is set.
    always @(*)
    begin
        if (enable)
        begin
            row_in <= row_bouncer;
            col_in <= columns;
        end
        else
        begin
            row_in <= rowOut;
            col_in <= colOut;
        end
    end
    
    // Update the output register with the new input.
    always @(posedge clk)
    begin
        rowOut <= row_in;
        colOut <= col_in;
    end
    
    // Shift register will shift 0 through pin 0 to pin 3,
    // which will be used a the scanner signal.
    always @(posedge slowestClk)
        if(~enable)
            shifter = {shifter[2:0],shifter[3]};
    
endmodule
