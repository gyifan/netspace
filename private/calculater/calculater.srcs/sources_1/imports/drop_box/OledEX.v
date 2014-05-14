`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineers: Ryan Kim
//				  Josh Sackos
//            Matthew Watkins*
//            *Adapted to Verilog and Vivado from ISE VHDL project
// 
// Create Date:    14:10:08 06/13/2012 
// Module Name:    OledExample - Behavioral 
// Project Name: 	 PmodOLED Demo
// Tool versions:  ISE 14.1
// Description: Demo for the PmodOLED.  First displays the alphabet for ~4 seconds and then
//				Clears the display, waits for a ~1 second and then displays "This is Digilent's
//				PmodOLED"
//
// Revision: 1.2
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module OledEX(
	input CLK,
	input RST,
	input EN,
	input CLR,
	input INPUT_VALID,
	input RESULT_VALID,
	input [3:0] INPUT,
	input [15:0] RESULT,
	output wire CS,
	output wire SDO,
	output wire SCLK,
	output wire DC,
	output wire FIN
);
	parameter 	PLUS_SIGN = 8'h2B,
			    MINUS_SIGN = 8'h2D,
			    EQUAL_SIGN = 8'h3D;
	
	//Variable that contains what the screen will be after the next UpdateScreen state
	reg [7:0]        current_screen[0:3][0:15];
	//Constant that fills the screen with blank (spaces) entries
	reg [7:0]  clear_screen[0:3][0:15];
	initial begin
		clear_screen[0][0] = 8'h20; clear_screen[0][1] = 8'h20; clear_screen[0][2] = 8'h20; clear_screen[0][3] = 8'h20;
		clear_screen[0][4] = 8'h20; clear_screen[0][5] = 8'h20; clear_screen[0][6] = 8'h20; clear_screen[0][7] = 8'h20;
		clear_screen[0][8] = 8'h20; clear_screen[0][9] = 8'h20; clear_screen[0][10] = 8'h20; clear_screen[0][11] = 8'h20;
		clear_screen[0][12] = 8'h20; clear_screen[0][13] = 8'h20; clear_screen[0][14] = 8'h20; clear_screen[0][15] = 8'h20;
		clear_screen[1][0] = 8'h20; clear_screen[1][1] = 8'h20; clear_screen[1][2] = 8'h20; clear_screen[1][3] = 8'h20;
		clear_screen[1][4] = 8'h20; clear_screen[1][5] = 8'h20; clear_screen[1][6] = 8'h20; clear_screen[1][7] = 8'h20;
		clear_screen[1][8] = 8'h20; clear_screen[1][9] = 8'h20; clear_screen[1][10] = 8'h20; clear_screen[1][11] = 8'h20;
		clear_screen[1][12] = 8'h20; clear_screen[1][13] = 8'h20; clear_screen[1][14] = 8'h20; clear_screen[1][15] = 8'h20;
		clear_screen[2][0] = 8'h20; clear_screen[2][1] = 8'h20; clear_screen[2][2] = 8'h20; clear_screen[2][3] = 8'h20;
		clear_screen[2][4] = 8'h20; clear_screen[2][5] = 8'h20; clear_screen[2][6] = 8'h20; clear_screen[2][7] = 8'h20;
		clear_screen[2][8] = 8'h20; clear_screen[2][9] = 8'h20; clear_screen[2][10] = 8'h20; clear_screen[2][11] = 8'h20;
		clear_screen[2][12] = 8'h20; clear_screen[2][13] = 8'h20; clear_screen[2][14] = 8'h20; clear_screen[2][15] = 8'h20;
		clear_screen[3][0] = 8'h20; clear_screen[3][1] = 8'h20; clear_screen[3][2] = 8'h20; clear_screen[3][3] = 8'h20;
		clear_screen[3][4] = 8'h20; clear_screen[3][5] = 8'h20; clear_screen[3][6] = 8'h20; clear_screen[3][7] = 8'h20;
		clear_screen[3][8] = 8'h20; clear_screen[3][9] = 8'h20; clear_screen[3][10] = 8'h20; clear_screen[3][11] = 8'h20;
		clear_screen[3][12] = 8'h20; clear_screen[3][13] = 8'h20; clear_screen[3][14] = 8'h20; clear_screen[3][15] = 8'h20;
	end
	//Constant that holds "Welcome!" and instructions for controls
	reg [7:0] input_screen[0:3][0:15];
	initial begin
		input_screen[0][0] = 8'h57; 	input_screen[0][1] = 8'h65; 	input_screen[0][2] = 8'h6C; 	input_screen[0][3] = 8'h63;		//W-e-l-c
		input_screen[0][4] = 8'h6F; 	input_screen[0][5] = 8'h6D; 	input_screen[0][6] = 8'h65; 	input_screen[0][7] = 8'h21;		//o-m-e-!
		input_screen[0][8] = 8'h20; 	input_screen[0][9] = 8'h20; 	input_screen[0][10] = 8'h20; 	input_screen[0][11] = 8'h20;
		input_screen[0][12] = 8'h20;	input_screen[0][13] = 8'h20; 	input_screen[0][14] = 8'h20; 	input_screen[0][15] = 8'h20;
		input_screen[1][0] = 8'h41; 	input_screen[1][1] = 8'h3A; 	input_screen[1][2] = 8'h2B; 	input_screen[1][3] = 8'h20;		//A:+ 
		input_screen[1][4] = 8'h42; 	input_screen[1][5] = 8'h3A; 	input_screen[1][6] = 8'h2D; 	input_screen[1][7] = 8'h20;		//B:-
		input_screen[1][8] = 8'h23; 	input_screen[1][9] = 8'h3A; 	input_screen[1][10] = 8'h3D;	input_screen[1][11] = 8'h20;	//#:=
		input_screen[1][12] = 8'h43; 	input_screen[1][13] = 8'h3A; 	input_screen[1][14] = 8'h43; 	input_screen[1][15] = 8'h4C;	//C:CL
		input_screen[2][0] = 8'h20; 	input_screen[2][1] = 8'h20; 	input_screen[2][2] = 8'h20; 	input_screen[2][3] = 8'h20;
		input_screen[2][4] = 8'h20; 	input_screen[2][5] = 8'h20; 	input_screen[2][6] = 8'h20; 	input_screen[2][7] = 8'h20;
		input_screen[2][8] = 8'h20; 	input_screen[2][9] = 8'h20; 	input_screen[2][10] = 8'h20; 	input_screen[2][11] = 8'h20;
		input_screen[2][12] = 8'h20;	input_screen[2][13] = 8'h20; 	input_screen[2][14] = 8'h20; 	input_screen[2][15] = 8'h20;
		input_screen[3][0] = 8'h20; 	input_screen[3][1] = 8'h20; 	input_screen[3][2] = 8'h20; 	input_screen[3][3] = 8'h20;
		input_screen[3][4] = 8'h20; 	input_screen[3][5] = 8'h20; 	input_screen[3][6] = 8'h20; 	input_screen[3][7] = 8'h20;
		input_screen[3][8] = 8'h20; 	input_screen[3][9] = 8'h20; 	input_screen[3][10] = 8'h20; 	input_screen[3][11] = 8'h20;
		input_screen[3][12] = 8'h20; 	input_screen[3][13] = 8'h20; 	input_screen[3][14] = 8'h20; 	input_screen[3][15] = 8'h20;
	end
	//Current overall state of the state machine
	reg [143:0] current_state;
	//State to go to after the SPI transmission is finished
	reg [111:0] after_state;
	//State to go to after the set page sequence
	reg [142:0] after_page_state;
	//State to go to after sending the character sequence
	reg [95:0] after_char_state;
	//State to go to after the UpdateScreen is finished
	reg [39:0] after_update_state;
	
	
	integer i = 0;
	integer j = 0;
	
	//Contains the value to be outputted to DC
	reg temp_dc;
	
	//-------------- Variables used in the Delay Controller Block --------------
	reg [11:0] temp_delay_ms;		//amount of ms to delay
	reg temp_delay_en;				//Enable signal for the delay block
	wire temp_delay_fin;				//Finish signal for the delay block
	
	//-------------- Variables used in the SPI controller block ----------------
	reg temp_spi_en;					//Enable signal for the SPI block
	reg [7:0] temp_spi_data;		//Data to be sent out on SPI
	wire temp_spi_fin;				//Finish signal for the SPI block
	
	reg [7:0] temp_char;				//Contains ASCII value for character
	reg [10:0] temp_addr;			//Contains address to BYTE needed in memory
	wire [7:0] temp_dout;			//Contains byte outputted from memory
	reg [1:0] temp_page;				//Current page
	reg [3:0] temp_index;			//Current character on page
	
	//-------------- Variables used in BCD to ASCII converter ------------------
	wire [7:0] ascii_input;				//Contains converted ASCII character
	wire [7:0] ones_result, tens_result, hundreds_result, thousands_result;	//Parses result from 4-digit BCD to 4 ASCII characters	

	//-------------- Variables used in Input state of FSM ----------------------
	reg [2:0] position = 3'd2;				//current position of input chars
	
	// Dirty bits for inputValid and clear.
	reg temp = 1'b0;
	reg ntemp = 1'b0;
	reg tmp_clr = 1'b0;
	reg ntmp_clr = 1'b0;
	// ===========================================================================
	// 										Implementation
	// ===========================================================================
	
	assign DC = temp_dc;
	//Example finish flag only high when in done state
	assign FIN = (current_state == "Done") ? 1'b1 : 1'b0;
	
	
	//Instantiate SPI Block
	SpiCtrl SPI_COMP(
		.CLK(CLK),
		.RST(RST),
		.SPI_EN(temp_spi_en),
		.SPI_DATA(temp_spi_data),
		.CS(CS),
		.SDO(SDO),
		.SCLK(SCLK),
		.SPI_FIN(temp_spi_fin)
	);
	
	//Instantiate Delay Block
	Delay DELAY_COMP(
		.CLK(CLK),
		.RST(RST),
		.DELAY_MS(temp_delay_ms),
		.DELAY_EN(temp_delay_en),
		.DELAY_FIN(temp_delay_fin)
	);
	
	//Instantiate Memory Block
	CHAR_LIB_COMP_N charlib_n(.clka(CLK), .addra(temp_addr),
						.douta(temp_dout), .ena(1));
	
	
	//Parses inputs from BCD to ASCII
	BCD2ASCII_4bit InputNum(
			.bcd_in(INPUT),
			.ascii_out(ascii_input)
	);


	//Parses result from BCD to ASCII
	BCD2ASCII_16bit Result(
			.bcd_in(RESULT),
			.ones_ascii(ones_result),
			.tens_ascii(tens_result),
			.hundreds_ascii(hundreds_result),
			.thousands_ascii(thousands_result)
	);
	
	//  State Machine
	always @(posedge CLK) begin
		
	case(current_state)
	
		// Idle until EN pulled high than intialize Page to 0 and go to state Initial afterwards
		"Idle" : begin
				if(EN == 1'b1) begin
					current_state <= "ClearDC";
					after_page_state <= "Initial";
					temp_page <= 2'b00;
				end
		end
		
		// Set current_screen to initial_screen and update the screen.  Go to state Wait1 afterwards
		"Initial" : begin
				//Reset all values in input_screen to initial values
				input_screen[0][0] = 8'h57; 	input_screen[0][1] = 8'h65; 	input_screen[0][2] = 8'h6C; 	input_screen[0][3] = 8'h63;		//W-e-l-c
				input_screen[0][4] = 8'h6F; 	input_screen[0][5] = 8'h6D; 	input_screen[0][6] = 8'h65; 	input_screen[0][7] = 8'h21;		//o-m-e-!
				input_screen[0][8] = 8'h20; 	input_screen[0][9] = 8'h20; 	input_screen[0][10] = 8'h20; 	input_screen[0][11] = 8'h20;
				input_screen[0][12] = 8'h20;	input_screen[0][13] = 8'h20; 	input_screen[0][14] = 8'h20; 	input_screen[0][15] = 8'h20;
				input_screen[1][0] = 8'h41; 	input_screen[1][1] = 8'h3A; 	input_screen[1][2] = 8'h2B; 	input_screen[1][3] = 8'h20;		//A:+ 
				input_screen[1][4] = 8'h42; 	input_screen[1][5] = 8'h3A; 	input_screen[1][6] = 8'h2D; 	input_screen[1][7] = 8'h20;		//B:-
				input_screen[1][8] = 8'h23; 	input_screen[1][9] = 8'h3A; 	input_screen[1][10] = 8'h3D;	input_screen[1][11] = 8'h20;	//#:=
				input_screen[1][12] = 8'h43; 	input_screen[1][13] = 8'h3A; 	input_screen[1][14] = 8'h43; 	input_screen[1][15] = 8'h4C;	//C:CL
				input_screen[2][0] = 8'h20; 	input_screen[2][1] = 8'h20; 	input_screen[2][2] = 8'h20; 	input_screen[2][3] = 8'h20;
				input_screen[2][4] = 8'h20; 	input_screen[2][5] = 8'h20; 	input_screen[2][6] = 8'h20; 	input_screen[2][7] = 8'h20;
				input_screen[2][8] = 8'h20; 	input_screen[2][9] = 8'h20; 	input_screen[2][10] = 8'h20; 	input_screen[2][11] = 8'h20;
				input_screen[2][12] = 8'h20;	input_screen[2][13] = 8'h20; 	input_screen[2][14] = 8'h20; 	input_screen[2][15] = 8'h20;
				input_screen[3][0] = 8'h20; 	input_screen[3][1] = 8'h20; 	input_screen[3][2] = 8'h20; 	input_screen[3][3] = 8'h20;
				input_screen[3][4] = 8'h20; 	input_screen[3][5] = 8'h20; 	input_screen[3][6] = 8'h20; 	input_screen[3][7] = 8'h20;
				input_screen[3][8] = 8'h20; 	input_screen[3][9] = 8'h20; 	input_screen[3][10] = 8'h20; 	input_screen[3][11] = 8'h20;
				input_screen[3][12] = 8'h20; 	input_screen[3][13] = 8'h20; 	input_screen[3][14] = 8'h20; 	input_screen[3][15] = 8'h20;
				
				//Update screen
				for(i = 0; i <= 3 ; i=i+1) begin
					for(j = 0; j <= 15 ; j=j+1) begin
							current_screen[i][j] <= input_screen[i][j];
					end
				end
				
				position = 3'd2;					//Reset position
				
				current_state <= "UpdateScreen";	//Update screen and go to Wait1
				after_update_state <= "Wait1";
		end
		
		// Wait 0.1ms and go to Input
		"Wait1" : begin
				temp_delay_ms <= 12'b000010000000; //128
				after_state <= "Input";
				current_state <= "Transition3"; // Transition3 = The delay transition states
		end
		
		// set current_screen to constant clear_screen and update the screen. Go to state Wait2 afterwards
		"Input" : begin
				if (tmp_clr == 1'b1) begin	//If clear is asserted, reset to Initial
				    ntmp_clr <= 1'b0;
					after_update_state <= "Wait3";
					current_state <= "UpdateScreen";
				end
				else if (RESULT_VALID) begin	//If result is asserted, update input_screen and go to result
				    ntmp_clr <= 1'b1;
					input_screen[3][15] <= ones_result;
					input_screen[3][14] <= tens_result;
					input_screen[3][13] <= hundreds_result;
					input_screen[3][12] <= thousands_result;
					after_update_state <= "Wait2";
					current_state <= "UpdateScreen";
				end
				else begin	//Otherwise update operands and such on third line
				    ntmp_clr <= 1'b1;
					after_update_state <= "Wait1";
					current_state <= "UpdateScreen";
					if (temp == 1'b1) begin
					    ntemp <= 1'b0;
					    if ((ascii_input == PLUS_SIGN)|(ascii_input == MINUS_SIGN))
						      input_screen[2][3'd3] <= ascii_input;
						else input_screen[2][position] <= ascii_input;
						if ((ascii_input == PLUS_SIGN)|(ascii_input == MINUS_SIGN))
						      position = 3'd6;
						else position = position - 1;
					end
					else ntemp <= 1'b1;
				end
		
				//Update screen
				for(i = 0; i <= 3 ; i=i+1) begin
					for(j = 0; j <= 15 ; j=j+1) begin
							current_screen[i][j] <= input_screen[i][j];
					end
				end
		end
		
		// Wait 0.1ms and go to Result
		"Wait2" : begin
				temp_delay_ms <= 12'b000010000000; //128
				after_state <= "Result";
				current_state <= "Transition3"; // Transition3 = The delay transition states
		end
		
		// Set currentScreen to constant digilent_screen and update the screen. Go to state Done afterwards
		"Result" : begin
				if (tmp_clr == 1'b1) begin	//If clear is asserted, reset to Initial
				    ntmp_clr <= 1'b0;
					after_update_state <= "Wait3";
					current_state <= "UpdateScreen";
				end
				else begin		//Otherwise, update screen and just cycle back through
				    ntmp_clr <= 1'b1;
					after_update_state <= "Wait2";
					current_state <= "UpdateScreen";
					for(i = 0; i <= 3 ; i=i+1) begin
						for(j = 0; j <= 15 ; j=j+1) begin
								current_screen[i][j] <= input_screen[i][j];
						end
					end
				end
				
		end
		
		// Wait 0.1ms and go to Initial
		"Wait3" : begin
				temp_delay_ms <= 12'b000010000000; //128
				after_state <= "Initial";
				current_state <= "Transition3"; // Transition3 = The delay transition states
		end
		
		//UpdateScreen State
		//1. Gets ASCII value from current_screen at the current page and the current spot of the page
		//2. If on the last character of the page transition update the page number, if on the last page(3)
		//			then the updateScreen go to "after_update_state" after
		"UpdateScreen" : begin
	
				temp_char <= current_screen[temp_page][temp_index];
	
				if(temp_index == 'd15) begin
	
					temp_index <= 'd0;
					temp_page <= temp_page + 1'b1;
					after_char_state <= "ClearDC";
	
					if(temp_page == 2'b11) begin
						after_page_state <= after_update_state;
					end
					else	begin
						after_page_state <= "UpdateScreen";
					end
				end
				else begin
	
					temp_index <= temp_index + 1'b1;
					after_char_state <= "UpdateScreen";
	
				end
				
				current_state <= "SendChar1";
	
		end
		
		//Update Page states
		//1. Sets DC to command mode
		//2. Sends the SetPage Command
		//3. Sends the Page to be set to
		//4. Sets the start pixel to the left column
		//5. Sets DC to data mode
		"ClearDC" : begin
				temp_dc <= 1'b0;
				//current_state <= "SetPage";
				current_state <= "PageNum";
		end
		
		//State not needed because using Page Address Mode
		"SetPage" : begin
				temp_spi_data <= 8'b00100010;
				after_state <= "PageNum";
				current_state <= "Transition1";
		end
		
		"PageNum" : begin
				//temp_spi_data <= {6'b000000,temp_page};
				//1 next to temp page because it appears that 
				//OLED on ZedBoard reads COM[32]-COM[63] (connected to pages 4-7)
				temp_spi_data <= {6'b101101,temp_page};
				after_state <= "LeftColumn1";
				current_state <= "Transition1";
		end
		
		"LeftColumn1" : begin
				temp_spi_data <= 8'b00000000;
				after_state <= "LeftColumn2";
				current_state <= "Transition1";
		end
		
		"LeftColumn2" : begin
				temp_spi_data <= 8'b00010000;
				after_state <= "SetDC";
				current_state <= "Transition1";
		end
		
		"SetDC" : begin
				temp_dc <= 1'b1;
				current_state <= after_page_state;
		end
		
		//Send Character States
		//1. Sets the Address to ASCII value of char with the counter appended to the end
		//2. Waits a clock for the data to get ready by going to ReadMem and ReadMem2 states
		//3. Send the byte of data given by the block Ram
		//4. Repeat 7 more times for the rest of the character bytes
		"SendChar1" : begin
				temp_addr <= {temp_char, 3'b000};
				after_state <= "SendChar2";
				current_state <= "ReadMem";
		end
		
		"SendChar2" : begin
				temp_addr <= {temp_char, 3'b001};
				after_state <= "SendChar3";
				current_state <= "ReadMem";
		end
		
		"SendChar3" : begin
				temp_addr <= {temp_char, 3'b010};
				after_state <= "SendChar4";
				current_state <= "ReadMem";
		end
		
		"SendChar4" : begin
				temp_addr <= {temp_char, 3'b011};
				after_state <= "SendChar5";
				current_state <= "ReadMem";
		end
		
		"SendChar5" : begin
				temp_addr <= {temp_char, 3'b100};
				after_state <= "SendChar6";
				current_state <= "ReadMem";
		end
		
		"SendChar6" : begin
				temp_addr <= {temp_char, 3'b101};
				after_state <= "SendChar7";
				current_state <= "ReadMem";
		end
		
		"SendChar7" : begin
				temp_addr <= {temp_char, 3'b110};
				after_state <= "SendChar8";
				current_state <= "ReadMem";
		end
		
		"SendChar8" : begin
				temp_addr <= {temp_char, 3'b111};
				after_state <= after_char_state;
				current_state <= "ReadMem";
		end
		
		"ReadMem" : begin
				current_state <= "ReadMem2";
		end
	
		"ReadMem2" : begin
				temp_spi_data <= temp_dout;
				current_state <= "Transition1";
		end
		//  End Send Character States
	
		// SPI transitions
		// 1. Set SPI_EN to 1
		// 2. Waits for SpiCtrl to finish
		// 3. Goes to clear state (Transition5)
		"Transition1" : begin
				temp_spi_en <= 1'b1;
				current_state <= "Transition2";
		end
	
		"Transition2" : begin
				if(temp_spi_fin == 1'b1) begin
					current_state <= "Transition5";
				end
		end
	
		// Delay Transitions
		// 1. Set DELAY_EN to 1
		// 2. Waits for Delay to finish
		// 3. Goes to Clear state (Transition5)
		"Transition3" : begin
				temp_delay_en <= 1'b1;
				current_state <= "Transition4";
		end
	
		"Transition4" : begin
				if(temp_delay_fin == 1'b1) begin
					current_state <= "Transition5";
				end
		end
	
		// Clear transition
		// 1. Sets both DELAY_EN and SPI_EN to 0
		// 2. Go to after state
		"Transition5" : begin
				temp_spi_en <= 1'b0;
				temp_delay_en <= 1'b0;
				current_state <= after_state;
		end
		//END SPI transitions
		//END Delay Transitions
		//END Clear transition
	
		default : current_state <= "Idle";
	
	endcase
	end
	
	// Updates the dirty bits.
	always @(*)
	begin
	   if(temp == 1'b0)
	       temp <= INPUT_VALID;
       else
           temp <= ntemp;
	end
	
	always @(*)
	begin
	   if(tmp_clr == 1'b0)
	       tmp_clr <= CLR;
       else
           tmp_clr <= ntmp_clr;
    end
	
	endmodule
