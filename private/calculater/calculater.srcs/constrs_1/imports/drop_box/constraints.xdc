set_property PACKAGE_PIN Y9 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
create_clock -name sys_clk_pin -period 10 [get_ports clk]

set_property PACKAGE_PIN AA12 [get_ports {SDIN}] 
set_property IOSTANDARD LVCMOS33 [get_ports {SDIN}]
set_property PACKAGE_PIN AB12 [get_ports {SCLK}] 
set_property IOSTANDARD LVCMOS33 [get_ports {SCLK}] 
set_property PACKAGE_PIN U10 [get_ports {DC}] 
set_property IOSTANDARD LVCMOS33 [get_ports {DC}]
set_property PACKAGE_PIN U9 [get_ports {RES}] 
set_property IOSTANDARD LVCMOS33 [get_ports {RES}]
set_property PACKAGE_PIN U11 [get_ports {VBAT}] 
set_property IOSTANDARD LVCMOS33 [get_ports {VBAT}]
set_property PACKAGE_PIN U12 [get_ports {VDD}] 
set_property IOSTANDARD LVCMOS33 [get_ports {VDD}]

# BTNR is reset
set_property PACKAGE_PIN R18 [get_ports {rst}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst}] 

# Assign rows to JC1_P-JC2_N
set_property PACKAGE_PIN AB7 [get_ports {rows[0]}]
set_property PACKAGE_PIN AB6 [get_ports {rows[1]}]
set_property PACKAGE_PIN Y4 [get_ports {rows[2]}]
set_property PACKAGE_PIN AA4 [get_ports {rows[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {rows[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rows[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rows[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rows[3]}] 

# Assign columns to JC3_P-JC3_N
set_property PACKAGE_PIN R6 [get_ports {columns[0]}]
set_property PACKAGE_PIN T6 [get_ports {columns[1]}]
set_property PACKAGE_PIN T4 [get_ports {columns[2]}]
set_property PACKAGE_PIN U4 [get_ports {columns[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {columns[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {columns[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {columns[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {columns[3]}] 


# LED0 is Low, LED1 is high
set_property PACKAGE_PIN T22 [get_ports {state[0]}]
set_property PACKAGE_PIN T21 [get_ports {state[1]}]
set_property PACKAGE_PIN U22 [get_ports {state[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {state[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {state[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {state[2]}] 

##We use the center push button as the reset for this project
#set_property PACKAGE_PIN P16 [get_ports {RST}] 
#set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

##We use the bottom push button as the input valid for testing
#set_property PACKAGE_PIN R16 [get_ports {INPUT_VALID}]
#set_property IOSTANDARD LVCMOS33 [get_ports {INPUT_VALID}]

##We use the top push button as the clear for testing
#set_property PACKAGE_PIN T18 [get_ports {CLR}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CLR}]

##We use the switches as the input for testing
#set_property PACKAGE_PIN F22 [get_ports {INPUT[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {INPUT[0]}]
#set_property PACKAGE_PIN G22 [get_ports {INPUT[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {INPUT[1]}]
#set_property PACKAGE_PIN H22 [get_ports {INPUT[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {INPUT[2]}]
#set_property PACKAGE_PIN F21 [get_ports {INPUT[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {INPUT[3]}]