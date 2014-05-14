// File vga.vhd translated with vhd2vl v2.4 VHDL to Verilog RTL translator
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

module VGA(
CLK25,
clkout,
rez_160x120,
rez_320x240,
Hsync,
Vsync,
Nblank,
activeArea,
Nsync
);

input CLK25;
// Horloge d'entrée de 25 MHz							
output clkout;
// Horloge de sortie vers le ADV7123 et l'écran TFT
input rez_160x120;
input rez_320x240;
output Hsync, Vsync;
// les deux signaux de synchronisation pour l'écran VGA
output Nblank;
// signal de commande du convertisseur N/A ADV7123
output activeArea;
output Nsync;

wire CLK25;
wire clkout;
wire rez_160x120;
wire rez_320x240;
reg Hsync;
reg Vsync;
wire Nblank;
reg activeArea;
wire Nsync;

// signaux de synchronisation et commande de l'écran TFT

reg [9:0] Hcnt = 10'b 0000000000;  // pour le comptage des colonnes
reg [9:0] Vcnt = 10'b 1000001000;  // pour le comptage des lignes
wire video;
parameter HM = 799;  //la taille maximale considéré 800 (horizontal)
parameter HD = 640;  //la taille de l'écran (horizontal)
parameter HF = 16;  //front porch
parameter HB = 48;  //back porch
parameter HR = 96;  //sync time
parameter VM = 524;  //la taille maximale considéré 525 (vertical)	
parameter VD = 480;  //la taille de l'écran (vertical)
parameter VF = 10;  //front porch
parameter VB = 33;  //back porch
parameter VR = 2;  //retrace

  // initialisation d'un compteur de 0 à 799 (800 pixel par ligne):
  // à chaque front d'horloge en incrémente le compteur de colonnes
  // c-a-d du 0 à 799.
  always @(posedge CLK25) begin
    if((Hcnt == HM)) begin
      Hcnt <= 10'b 0000000000;
      if((Vcnt == VM)) begin
        Vcnt <= 10'b 0000000000;
        activeArea <= 1'b 1;
      end
      else begin
        if(rez_160x120 == 1'b 1) begin
          if(vCnt < (120 - 1)) begin
            activeArea <= 1'b 1;
          end
        end
        else if(rez_320x240 == 1'b 1) begin
          if(vCnt < (240 - 1)) begin
            activeArea <= 1'b 1;
          end
        end
        else begin
          if(vCnt < (480 - 1)) begin
            activeArea <= 1'b 1;
          end
        end
        Vcnt <= Vcnt + 1;
      end
    end
    else begin
      if(rez_160x120 == 1'b 1) begin
        if(hcnt == (160 - 1)) begin
          activeArea <= 1'b 0;
        end
      end
      else if(rez_320x240 == 1'b 1) begin
        if(hcnt == (320 - 1)) begin
          activeArea <= 1'b 0;
        end
      end
      else begin
        if(hcnt == (640 - 1)) begin
          activeArea <= 1'b 0;
        end
      end
      Hcnt <= Hcnt + 1;
    end
  end

  //--------------------------------------------------------------
  // génération du signal de synchronisation horizontale Hsync:
  always @(posedge CLK25) begin
    if((Hcnt >= ((HD + HF)) && Hcnt <= ((HD + HF + HR - 1)))) begin
      //- Hcnt >= 656 and Hcnt <= 751
      Hsync <= 1'b 0;
    end
    else begin
      Hsync <= 1'b 1;
    end
  end

  //--------------------------------------------------------------
  // génération du signal de synchronisation verticale Vsync:
  always @(posedge CLK25) begin
    if((Vcnt >= ((VD + VF)) && Vcnt <= ((VD + VF + VR - 1)))) begin
      //-Vcnt >= 490 and vcnt<= 491
      Vsync <= 1'b 0;
    end
    else begin
      Vsync <= 1'b 1;
    end
  end

  //--------------------------------------------------------------
  // Nblank et Nsync pour commander le covertisseur ADV7123:
  assign Nsync = 1'b 1;
  assign video = (Hcnt < HD) && (Vcnt < VD) ? 1'b 1 : 1'b 0;
  assign Nblank = video;
  assign clkout = CLK25;

endmodule
