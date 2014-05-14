`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Matthew Watkins
// 
// Create Date: 01/11/2014 03:38:36 PM
// Module Name: VerilogOLEDCtrl
// Target Devices: ZedBoard
// Description: Shows basic use of ZedBoard OLED.
// 
// Additional Comments: Adapted from existing example that used VHDL and Xilinx ISE
//    -Once programmed may need to reset (center button) to properly initialize OLED
// 
//////////////////////////////////////////////////////////////////////////////////


module VerilogOLEDCtrl(
    input CLK,
    input RST,
    input CLR,
    input INPUT_VALID,
    input RESULT_VALID,
    input [3:0] INPUT,
    input [15:0] RESULT,
    output SDIN,
    output SCLK,
    output DC,
    output RES,
    output VBAT,
    output VDD
    );
    
	reg [110:0] current_state = "Idle";

	wire init_en;
	wire init_done;
	wire init_cs;
	wire init_sdo;
	wire init_sclk;
	wire init_dc;
	
	wire example_en;
	wire example_cs;
	wire example_sdo;
	wire example_sclk;
	wire example_dc;
	wire example_done;
	// ===========================================================================
	// 										Implementation
	// ===========================================================================
	OledInit Init(
			.CLK(CLK),
			.RST(RST),
			.EN(init_en),
			.CS(init_cs),
			.SDO(init_sdo),
			.SCLK(init_sclk),
			.DC(init_dc),
			.RES(RES),
			.VBAT(VBAT),
			.VDD(VDD),
			.FIN(init_done)
	);
	
	OledEX Example(
			.CLK(CLK),
			.RST(RST),
			.CLR(CLR),
			.INPUT_VALID(INPUT_VALID),
			.RESULT_VALID(RESULT_VALID),
			.INPUT(INPUT),
			.RESULT(RESULT),
			.EN(example_en),
			.CS(example_cs),
			.SDO(example_sdo),
			.SCLK(example_sclk),
			.DC(example_dc),
			.FIN(example_done)
	);


	//MUXes to indicate which outputs are routed out depending on which block is enabled
	assign CS = (current_state == "OledInitialize") ? init_cs : example_cs;
	assign SDIN = (current_state == "OledInitialize") ? init_sdo : example_sdo;
	assign SCLK = (current_state == "OledInitialize") ? init_sclk : example_sclk;
	assign DC = (current_state == "OledInitialize") ? init_dc : example_dc;
	//END output MUXes

	
	//MUXes that enable blocks when in the proper states
	assign init_en = (current_state == "OledInitialize") ? 1'b1 : 1'b0;
	assign example_en = (current_state == "OledExample") ? 1'b1 : 1'b0;
	//END enable MUXes

	
	//  State Machine
	always @(posedge CLK) begin
			if(RST == 1'b1) begin
					current_state <= "Idle";
			end
			else begin
					case(current_state)
						"Idle" : begin
							current_state <= "OledInitialize";
						end
  					   // Go through the initialization sequence
						"OledInitialize" : begin
								if(init_done == 1'b1) begin
										current_state <= "OledExample";
								end
						end
						// Do example and Do nothing when finished
						"OledExample" : begin
								if(example_done == 1'b1) begin
										current_state <= "Done";
								end
						end
						// Do Nothing
						"Done" : begin
							current_state <= "Done";
						end
						
						default : current_state <= "Idle";
					endcase
			end
	end
    
    
endmodule
