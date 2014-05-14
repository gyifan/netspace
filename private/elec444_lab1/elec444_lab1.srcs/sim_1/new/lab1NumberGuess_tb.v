`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2014 07:23:12 PM
// Design Name: 
// Module Name: lab1NumberGuess_tb
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


module lab1NumberGuess_tb();

reg clk = 0;
reg reset = 1;
reg enter = 0;
reg [5:0] switches = 6'b0;
wire [1:0] anodes;
wire [6:0] cathodes;
wire redLED;
wire greenLED;

initial begin
    forever begin
        #5 clk = !clk;
    end
end

initial begin
    #20;
    enter = 0;
    reset = 1;
    switches = 6'b0;
    
    #100;
    reset = 0;
    switches = 6'd10;
    enter = 1;
    #100;
    enter = 0;
    
    #10;
    enter = 1;
    #10;
    enter = 0;

    
    #80;
    switches = 6'd6;
    enter = 1;
    #100;
    enter = 0;
    
    #80;
    switches = 6'd12;
    enter = 1;
    #100;
    enter = 0;
    
    #80;
    switches = 6'd10;
    enter = 1;
    #100;
    enter = 0;
    
    #80;
    reset = 1;
end    

lab1NumberGuess lab1(
    .clk(clk),
    .reset(reset),
    .enter(enter),
    .switches(switches),
    .anodes(anodes),
    .cathodes(cathodes),
    .redLED(redLED),
    .greenLED(greenLED));

endmodule
