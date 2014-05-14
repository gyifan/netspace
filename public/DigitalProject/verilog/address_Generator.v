// File address_Generator.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 1995

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002, 2005, 2008-2010 Larry Doolittle - LBNL
//     http://doolittle.icarus.com/~larry/vhd2vl/
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

//--------------------------------------------------------------------------------
// no timescale needed

module Address_Generator(
CLK25,
enable,
rez_160x120,
rez_320x240,
vsync,
address
);

input CLK25, enable;
// horloge de 25 MHz et signal d'activation respectivement
input rez_160x120;
input rez_320x240;
input vsync;
output [18:0] address;

wire CLK25;
wire enable;
wire rez_160x120;
wire rez_320x240;
wire vsync;
wire [18:0] address;

// adresse généré

reg [18:0] val = 0;  // signal intermidiaire

  assign address = val;
  // adresse généré
  always @(posedge CLK25) begin
    if((enable == 1'b 1)) begin
      // si enable = 0 on arrete la génération d'adresses
      if(rez_160x120 == 1'b 1) begin
        if((val < (160 * 120))) begin
          // si l'espace mémoire est balayé complétement				
          val <= val + 1;
        end
      end
      else if(rez_320x240 == 1'b 1) begin
        if((val < (320 * 240))) begin
          // si l'espace mémoire est balayé complétement				
          val <= val + 1;
        end
      end
      else begin
        if((val < (640 * 480))) begin
          // si l'espace mémoire est balayé complétement				
          val <= val + 1;
        end
      end
    end
    if(vsync == 1'b 0) begin
      val <= {19{1'b0}};
    end
  end


endmodule
