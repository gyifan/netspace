// File RGB.vhd translated with vhd2vl v2.0 VHDL to Verilog RTL translator
// Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd - http://www.ocean-logic.com
// Modifications (C) 2006 Mark Gonzales - PMC Sierra Inc
// 
// vhd2vl comes with ABSOLUTELY NO WARRANTY
// ALWAYS RUN A FORMAL VERIFICATION TOOL TO COMPARE VHDL INPUT TO VERILOG OUTPUT 
// 
// This is free software, and you are welcome to redistribute it under certain conditions.
// See the license file license.txt included with the source for details.


module RGB(
Din,
Nblank,
R,
G,
B
);

input[11:0] Din;
// niveau de gris du pixels sur 8 bits
input Nblank;
// signal indique les zone d'affichage, hors la zone d'affichage
// les trois couleurs prendre 0
output[7:0] R, G, B;

wire  [11:0] Din;
wire   Nblank;
wire  [7:0] R;
wire  [7:0] G;
wire  [7:0] B;

// les trois couleurs sur 10 bits


  assign R = Nblank == 1'b 1 ? {Din[11:8] ,Din[11:8] } : 8'b 00000000;
  assign G = Nblank == 1'b 1 ? {Din[7:4] ,Din[7:4] } : 8'b 00000000;
  assign B = Nblank == 1'b 1 ? {Din[3:0] ,Din[3:0] } : 8'b 00000000;

endmodule
