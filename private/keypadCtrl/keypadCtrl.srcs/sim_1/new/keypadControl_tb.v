`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2014 05:26:08 PM
// Design Name: 
// Module Name: keypadControl_tb
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


module keypadControl_tb();

    reg clk = 1'b0;
    reg [3:0] rows;
    
    wire [3:0] columns;
    wire [3:0] rowOut;
    wire [3:0] colOut;

initial begin
    forever begin
        #5 clk = !clk;
    end
end

initial begin
    
    #20;
    rows <= 4'b0001;
    #20;
    rows <= 4'b0010;
    #20;
    rows <= 4'b0100;
    #20;
    rows <= 4'b1000;
    #20; 
    
    rows <= 4'b0;
    #40;
    rows <= 4'b0010;
    #20;
    rows <= 4'b0; 
end
    
keypadController keypad(
    .clk(clk),
    .rows(rows),
    .columns(columns),
    .rowOut(rowOut),
    .colOut(colOut));

endmodule
