
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
É
+Loading parts and site information from %s
36*device2?
+C:/Xilinx/Vivado/2013.4/data/parts/arch.xml2default:defaultZ21-36
ê
!Parsing RTL primitives file [%s]
14*netlist2U
AC:/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
ô
*Finished parsing RTL primitives file [%s]
11*netlist2U
AC:/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
5
Refreshing IP repositories
234*coregenZ19-234
>
"No user IP repositories specified
1154*coregenZ19-1704
s
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2013.4/data/ip2default:defaultZ19-2313
x
Command: %s
53*	vivadotcl2P
<synth_design -top keypadCalculatorOled -part xc7z020clg484-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
µ
%IP '%s' is locked. Locked reason: %s
1260*coregen2#
CHAR_LIB_COMP_N2default:default2M
9Property 'IS_LOCKED' is set to true by the system or user2default:defaultZ19-2162
ï
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347
Ö
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349
õ
%s*synth2ã
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 241.211 ; gain = 93.617
2default:default
Ÿ
synthesizing module '%s'638*oasys2(
keypadCalculatorOled2default:default2`
JU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v2default:default2
242default:default8@Z8-638
—
synthesizing module '%s'638*oasys2$
keypadCalculator2default:default2\
FU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculator.v2default:default2
372default:default8@Z8-638
·
synthesizing module '%s'638*oasys2
	slowclock2default:default2s
]U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-638
S
%s*synth2D
0	Parameter LENGTH bound to: 16 - type: integer 
2default:default
ú
%done synthesizing module '%s' (%s#%s)256*oasys2
	slowclock2default:default2
12default:default2
12default:default2s
]U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-256
„
synthesizing module '%s'638*oasys2$
keypadController2default:default2n
XU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/keypadController.v2default:default2
242default:default8@Z8-638
Ò
synthesizing module '%s'638*oasys2-
slowclock__parameterized02default:default2s
]U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-638
S
%s*synth2D
0	Parameter LENGTH bound to: 20 - type: integer 
2default:default
¨
%done synthesizing module '%s' (%s#%s)256*oasys2-
slowclock__parameterized02default:default2
12default:default2
12default:default2s
]U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-256
ﬂ
synthesizing module '%s'638*oasys2
	debouncer2default:default2q
[U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/bouncer.v2default:default2
332default:default8@Z8-638
H
%s*synth29
%	Parameter firstLow bound to: 2'b00 
2default:default
I
%s*synth2:
&	Parameter secondLow bound to: 2'b01 
2default:default
I
%s*synth2:
&	Parameter firstHigh bound to: 2'b10 
2default:default
J
%s*synth2;
'	Parameter secondHigh bound to: 2'b11 
2default:default
√
default block is never used226*oasys2q
[U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/bouncer.v2default:default2
532default:default8@Z8-226
√
default block is never used226*oasys2q
[U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/bouncer.v2default:default2
822default:default8@Z8-226
ö
%done synthesizing module '%s' (%s#%s)256*oasys2
	debouncer2default:default2
22default:default2
12default:default2q
[U:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/verilog/bouncer.v2default:default2
332default:default8@Z8-256
û
%done synthesizing module '%s' (%s#%s)256*oasys2$
keypadController2default:default2
32default:default2
12default:default2n
XU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/keypadController.v2default:default2
242default:default8@Z8-256
€
synthesizing module '%s'638*oasys2 
keyConverter2default:default2j
TU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/keyConverter.v2default:default2
232default:default8@Z8-638
ñ
%done synthesizing module '%s' (%s#%s)256*oasys2 
keyConverter2default:default2
42default:default2
12default:default2j
TU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/keyConverter.v2default:default2
232default:default8@Z8-256
≈
synthesizing module '%s'638*oasys2

calculator2default:default2V
@U:/private/calculater/calculater.srcs/sources_1/new/calculator.v2default:default2
252default:default8@Z8-638
œ
synthesizing module '%s'638*oasys2#
singleClkSigGen2default:default2[
EU:/private/calculater/calculater.srcs/sources_1/new/singleClkSigGen.v2default:default2
232default:default8@Z8-638
ä
%done synthesizing module '%s' (%s#%s)256*oasys2#
singleClkSigGen2default:default2
52default:default2
12default:default2[
EU:/private/calculater/calculater.srcs/sources_1/new/singleClkSigGen.v2default:default2
232default:default8@Z8-256
∑
synthesizing module '%s'638*oasys2
fsm2default:default2O
9U:/private/calculater/calculater.srcs/sources_1/new/fsm.v2default:default2
372default:default8@Z8-638
Ú
%done synthesizing module '%s' (%s#%s)256*oasys2
fsm2default:default2
62default:default2
12default:default2O
9U:/private/calculater/calculater.srcs/sources_1/new/fsm.v2default:default2
372default:default8@Z8-256
À
synthesizing module '%s'638*oasys2!
shiftInputReg2default:default2Y
CU:/private/calculater/calculater.srcs/sources_1/new/shiftInputReg.v2default:default2
232default:default8@Z8-638
Ü
%done synthesizing module '%s' (%s#%s)256*oasys2!
shiftInputReg2default:default2
72default:default2
12default:default2Y
CU:/private/calculater/calculater.srcs/sources_1/new/shiftInputReg.v2default:default2
232default:default8@Z8-256
«
synthesizing module '%s'638*oasys2
bin2bcdDec42default:default2W
AU:/private/calculater/calculater.srcs/sources_1/new/bin2bcdDec4.v2default:default2
762default:default8@Z8-638
¿
synthesizing module '%s'638*oasys2
add32default:default2W
AU:/private/calculater/calculater.srcs/sources_1/new/bin2bcdDec4.v2default:default2
402default:default8@Z8-638
˚
%done synthesizing module '%s' (%s#%s)256*oasys2
add32default:default2
82default:default2
12default:default2W
AU:/private/calculater/calculater.srcs/sources_1/new/bin2bcdDec4.v2default:default2
402default:default8@Z8-256
Ç
%done synthesizing module '%s' (%s#%s)256*oasys2
bin2bcdDec42default:default2
92default:default2
12default:default2W
AU:/private/calculater/calculater.srcs/sources_1/new/bin2bcdDec4.v2default:default2
762default:default8@Z8-256
Å
%done synthesizing module '%s' (%s#%s)256*oasys2

calculator2default:default2
102default:default2
12default:default2V
@U:/private/calculater/calculater.srcs/sources_1/new/calculator.v2default:default2
252default:default8@Z8-256
ç
%done synthesizing module '%s' (%s#%s)256*oasys2$
keypadCalculator2default:default2
112default:default2
12default:default2\
FU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculator.v2default:default2
372default:default8@Z8-256
˘
synthesizing module '%s'638*oasys2#
VerilogOLEDCtrl2default:default2Ñ
nU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/VerilogOLEDCtrl.v2default:default2
172default:default8@Z8-638
Í
synthesizing module '%s'638*oasys2
OledInit2default:default2}
gU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/OledInit.v2default:default2
172default:default8@Z8-638
Ë
synthesizing module '%s'638*oasys2
SpiCtrl2default:default2|
fU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/SpiCtrl.v2default:default2
192default:default8@Z8-638
§
%done synthesizing module '%s' (%s#%s)256*oasys2
SpiCtrl2default:default2
122default:default2
12default:default2|
fU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/SpiCtrl.v2default:default2
192default:default8@Z8-256
‰
synthesizing module '%s'638*oasys2
Delay2default:default2z
dU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/Delay.v2default:default2
172default:default8@Z8-638
†
%done synthesizing module '%s' (%s#%s)256*oasys2
Delay2default:default2
132default:default2
12default:default2z
dU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/Delay.v2default:default2
172default:default8@Z8-256
¶
%done synthesizing module '%s' (%s#%s)256*oasys2
OledInit2default:default2
142default:default2
12default:default2}
gU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/OledInit.v2default:default2
172default:default8@Z8-256
 
synthesizing module '%s'638*oasys2
OledEX2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
212default:default8@Z8-638
O
%s*synth2@
,	Parameter PLUS_SIGN bound to: 8'b00101011 
2default:default
P
%s*synth2A
-	Parameter MINUS_SIGN bound to: 8'b00101101 
2default:default
P
%s*synth2A
-	Parameter EQUAL_SIGN bound to: 8'b00111101 
2default:default
Ú
synthesizing module '%s'638*oasys2#
CHAR_LIB_COMP_N2default:default2
iU:/private/calculater/calculater.runs/synth_1/.Xil/Vivado-6588-DANA307-07/realtime/CHAR_LIB_COMP_N_stub.v2default:default2
62default:default8@Z8-638
Æ
%done synthesizing module '%s' (%s#%s)256*oasys2#
CHAR_LIB_COMP_N2default:default2
152default:default2
12default:default2
iU:/private/calculater/calculater.runs/synth_1/.Xil/Vivado-6588-DANA307-07/realtime/CHAR_LIB_COMP_N_stub.v2default:default2
62default:default8@Z8-256
ﬂ
synthesizing module '%s'638*oasys2"
BCD2ASCII_4bit2default:default2l
VU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_4bit.v2default:default2
232default:default8@Z8-638
R
%s*synth2C
/	Parameter ASCII_OFFSET bound to: 8'b00110000 
2default:default
O
%s*synth2@
,	Parameter PLUS_SIGN bound to: 8'b00101011 
2default:default
P
%s*synth2A
-	Parameter MINUS_SIGN bound to: 8'b00101101 
2default:default
P
%s*synth2A
-	Parameter EQUAL_SIGN bound to: 8'b00111101 
2default:default
õ
%done synthesizing module '%s' (%s#%s)256*oasys2"
BCD2ASCII_4bit2default:default2
162default:default2
12default:default2l
VU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_4bit.v2default:default2
232default:default8@Z8-256
·
synthesizing module '%s'638*oasys2#
BCD2ASCII_16bit2default:default2m
WU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_16bit.v2default:default2
232default:default8@Z8-638
R
%s*synth2C
/	Parameter ASCII_OFFSET bound to: 8'b00110000 
2default:default
ù
%done synthesizing module '%s' (%s#%s)256*oasys2#
BCD2ASCII_16bit2default:default2
172default:default2
12default:default2m
WU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_16bit.v2default:default2
232default:default8@Z8-256
Ü
%done synthesizing module '%s' (%s#%s)256*oasys2
OledEX2default:default2
182default:default2
12default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
212default:default8@Z8-256
µ
%done synthesizing module '%s' (%s#%s)256*oasys2#
VerilogOLEDCtrl2default:default2
192default:default2
12default:default2Ñ
nU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/imports/VerilogOLEDStarter/VerilogOLEDCtrl.v2default:default2
172default:default8@Z8-256
ï
%done synthesizing module '%s' (%s#%s)256*oasys2(
keypadCalculatorOled2default:default2
202default:default2
12default:default2`
JU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v2default:default2
242default:default8@Z8-256
ú
%s*synth2å
xFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:12 . Memory (MB): peak = 312.445 ; gain = 164.852
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
ñ
Loading clock regions from %s
13*device2_
KC:/Xilinx/Vivado/2013.4/data\parts/xilinx/zynq/zynq/xc7z020/ClockRegion.xml2default:defaultZ21-13
ó
Loading clock buffers from %s
11*device2`
LC:/Xilinx/Vivado/2013.4/data\parts/xilinx/zynq/zynq/xc7z020/ClockBuffers.xml2default:defaultZ21-11
ó
&Loading clock placement rules from %s
318*place2W
CC:/Xilinx/Vivado/2013.4/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318
ï
)Loading package pin functions from %s...
17*device2S
?C:/Xilinx/Vivado/2013.4/data\parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17
ì
Loading package from %s
16*device2b
NC:/Xilinx/Vivado/2013.4/data\parts/xilinx/zynq/zynq/xc7z020/clg484/Package.xml2default:defaultZ21-16
ä
Loading io standards from %s
15*device2T
@C:/Xilinx/Vivado/2013.4/data\./parts/xilinx/zynq/IOStandards.xml2default:defaultZ21-15
5

Processing XDC Constraints
244*projectZ1-262
ö
Parsing XDC File [%s]
179*designutils2d
PU:/private/calculater/calculater.srcs/constrs_1/imports/drop_box/constraints.xdc2default:defaultZ20-179
£
Finished Parsing XDC File [%s]
178*designutils2d
PU:/private/calculater/calculater.srcs/constrs_1/imports/drop_box/constraints.xdc2default:defaultZ20-178
√
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2d
PU:/private/calculater/calculater.srcs/constrs_1/imports/drop_box/constraints.xdc2default:default2h
TU:/private/calculater/calculater.runs/synth_1/.Xil/keypadCalculatorOled_propImpl.xdc2default:defaultZ1-236
Ü
Parsing XDC File [%s]
179*designutils2P
<U:/private/calculater/calculater.runs/synth_1/dont_touch.xdc2default:defaultZ20-179
è
Finished Parsing XDC File [%s]
178*designutils2P
<U:/private/calculater/calculater.runs/synth_1/dont_touch.xdc2default:defaultZ20-178
á
Parsing XDC File [%s]
179*designutils2Q
=U:/private/calculater/calculater.runs/synth_1/dont_buffer.xdc2default:defaultZ20-179
ê
Finished Parsing XDC File [%s]
178*designutils2Q
=U:/private/calculater/calculater.runs/synth_1/dont_buffer.xdc2default:defaultZ20-178
?
&Completed Processing XDC Constraints

245*projectZ1-263
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-144
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
µ
%s*synth2•
êFinished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:28 . Memory (MB): peak = 551.922 ; gain = 404.328
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:28 . Memory (MB): peak = 551.922 ; gain = 404.328
2default:default
®
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2V
@U:/private/calculater/calculater.srcs/sources_1/new/calculator.v2default:default2
1182default:default8@Z8-3537
é
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
SpiCtrl2default:defaultZ8-802
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[0][6][7:0]2default:default2/
input_screen_reg[0][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[0][9][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[0][10][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[0][11][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[0][12][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[0][13][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[0][14][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[0][15][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[1][3][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[1][5][7:0]2default:default2/
input_screen_reg[1][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[1][7][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[1][9][7:0]2default:default2/
input_screen_reg[1][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[1][11][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[1][13][7:0]2default:default2/
input_screen_reg[1][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ú
merging register '%s' into '%s'3619*oasys20
input_screen_reg[1][14][7:0]2default:default20
input_screen_reg[1][12][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[2][8][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[2][9][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[2][10][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[2][11][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[2][12][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[2][13][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[2][14][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[2][15][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][0][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][1][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][2][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][3][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][4][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][5][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][6][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][7][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][8][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
ö
merging register '%s' into '%s'3619*oasys2/
input_screen_reg[3][9][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[3][10][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
õ
merging register '%s' into '%s'3619*oasys20
input_screen_reg[3][11][7:0]2default:default2/
input_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
1962default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[0][6][7:0]2default:default21
current_screen_reg[0][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[0][9][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[0][10][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[0][11][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[0][12][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[0][13][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[0][14][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[0][15][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[1][3][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[1][5][7:0]2default:default21
current_screen_reg[1][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[1][7][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[1][9][7:0]2default:default21
current_screen_reg[1][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[1][11][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[1][13][7:0]2default:default21
current_screen_reg[1][1][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
†
merging register '%s' into '%s'3619*oasys22
current_screen_reg[1][14][7:0]2default:default22
current_screen_reg[1][12][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[2][8][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[2][9][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[2][10][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[2][11][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[2][12][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[2][13][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[2][14][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[2][15][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][0][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][1][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][2][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][3][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][4][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][5][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][6][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][7][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][8][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
û
merging register '%s' into '%s'3619*oasys21
current_screen_reg[3][9][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[3][10][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ü
merging register '%s' into '%s'3619*oasys22
current_screen_reg[3][11][7:0]2default:default21
current_screen_reg[0][8][7:0]2default:default2_
IU:/private/calculater/calculater.srcs/sources_1/imports/drop_box/OledEX.v2default:default2
2162default:default8@Z8-4471
ñ
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2#
VerilogOLEDCtrl2default:defaultZ8-802
¡
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2
SpiCtrl2default:defaultZ8-3354
…
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2#
VerilogOLEDCtrl2default:defaultZ8-3354
<
%s*synth2-

Report RTL Partitions: 
2default:default
Z
%s*synth2K
7+------+---------------------+------------+----------+
2default:default
Z
%s*synth2K
7|      |RTL Partition        |Replication |Instances |
2default:default
Z
%s*synth2K
7+------+---------------------+------------+----------+
2default:default
Z
%s*synth2K
7|1     |VerilogOLEDCtrl__GB0 |           1|     60648|
2default:default
Z
%s*synth2K
7|2     |OledInit             |           1|     29144|
2default:default
Z
%s*synth2K
7|3     |keypadCalculator     |           1|      1294|
2default:default
Z
%s*synth2K
7+------+---------------------+------------+----------+
2default:default
z
%s*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:36 ; elapsed = 00:00:46 . Memory (MB): peak = 606.957 ; gain = 459.363
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     17 Bit       Adders := 2     
2default:default
Q
%s*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:default
Q
%s*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	              144 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	              143 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	              112 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	              104 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	               96 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               40 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	               17 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	               12 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               11 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 63    
2default:default
Q
%s*synth2B
.	                5 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 14    
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 31    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	  30 Input    143 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  30 Input    112 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   5 Input    111 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  28 Input    104 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input     95 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  30 Input     40 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   8 Input     40 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input     39 Bit        Muxes := 3     
2default:default
Q
%s*synth2B
.	   4 Input     31 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input     17 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  30 Input     11 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   7 Input      8 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   4 Input      8 Bit        Muxes := 15    
2default:default
Q
%s*synth2B
.	  30 Input      8 Bit        Muxes := 42    
2default:default
Q
%s*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  28 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 50    
2default:default
Q
%s*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      7 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   5 Input      4 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  30 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 7     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 12    
2default:default
Q
%s*synth2B
.	  30 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   3 Input      1 Bit        Muxes := 6     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 46    
2default:default
Q
%s*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  30 Input      1 Bit        Muxes := 28    
2default:default
Q
%s*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   6 Input      1 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	  28 Input      1 Bit        Muxes := 12    
2default:default
Q
%s*synth2B
.	   4 Input      1 Bit        Muxes := 2     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
@
%s*synth21
Module keypadCalculatorOled 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
5
%s*synth2&
Module slowclock 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
E
%s*synth26
"Module slowclock__parameterized0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
8
%s*synth2)
Module debouncer__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:default
8
%s*synth2)
Module debouncer__2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:default
8
%s*synth2)
Module debouncer__3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:default
5
%s*synth2&
Module debouncer 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:default
<
%s*synth2-
Module keypadController 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 3     
2default:default
8
%s*synth2)
Module keyConverter 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   5 Input      4 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:default
;
%s*synth2,
Module singleClkSigGen 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
/
%s*synth2 
Module fsm 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   6 Input      1 Bit        Muxes := 5     
2default:default
>
%s*synth2/
Module singleClkSigGen__6 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
>
%s*synth2/
Module singleClkSigGen__5 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
>
%s*synth2/
Module singleClkSigGen__4 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
<
%s*synth2-
Module shiftInputReg__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 4     
2default:default
>
%s*synth2/
Module singleClkSigGen__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
>
%s*synth2/
Module singleClkSigGen__2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
>
%s*synth2/
Module singleClkSigGen__3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
9
%s*synth2*
Module shiftInputReg 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 4     
2default:default
3
%s*synth2$
Module add3__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__4 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__5 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__6 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__7 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__8 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module add3__9 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
Module add3__10 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
Module add3__11 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
Module add3__12 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
0
%s*synth2!
Module add3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
7
%s*synth2(
Module bin2bcdDec4 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
6
%s*synth2'
Module calculator 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:default
<
%s*synth2-
Module keypadCalculator 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module SpiCtrl 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                5 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   8 Input     40 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   7 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:default
Q
%s*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:default
1
%s*synth2"
Module Delay 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               17 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     31 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:default
4
%s*synth2%
Module OledInit 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	              104 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 7     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	  28 Input    104 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  28 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  28 Input      1 Bit        Muxes := 12    
2default:default
6
%s*synth2'
Module SpiCtrl__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                5 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   8 Input     40 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   7 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:default
Q
%s*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:default
4
%s*synth2%
Module Delay__1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               17 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     31 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:default
:
%s*synth2+
Module BCD2ASCII_4bit 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input      7 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:default
;
%s*synth2,
Module BCD2ASCII_16bit 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
2
%s*synth2#
Module OledEX 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	              144 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	              143 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	              112 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               96 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               40 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               12 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               11 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 60    
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                3 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 5     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	  30 Input    143 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  30 Input    112 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     95 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  30 Input     40 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     39 Bit        Muxes := 3     
2default:default
Q
%s*synth2B
.	  30 Input     11 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 48    
2default:default
Q
%s*synth2B
.	   4 Input      8 Bit        Muxes := 15    
2default:default
Q
%s*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  30 Input      8 Bit        Muxes := 42    
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  30 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  30 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 23    
2default:default
Q
%s*synth2B
.	  30 Input      1 Bit        Muxes := 28    
2default:default
;
%s*synth2,
Module VerilogOLEDCtrl 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   5 Input    111 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:default
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:51 ; elapsed = 00:01:02 . Memory (MB): peak = 627.777 ; gain = 480.184
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][6][5] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][7][5] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][5][5] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][4][5] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][2][5] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][3][5] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][1][5] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][0][5] 2default:defaultZ8-3333
±
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2I
5oledCtrl_insti_0/Example/\input_screen_reg[3][12][5] 2default:defaultZ8-3333
±
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2I
5oledCtrl_insti_0/Example/\input_screen_reg[1][12][6] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][6][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][7][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][5][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][4][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][2][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][3][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][1][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[2][0][7] 2default:defaultZ8-3333
±
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5oledCtrl_insti_0/Example/\input_screen_reg[3][12][7] 2default:defaultZ8-3333
∞
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4oledCtrl_insti_0/Example/\input_screen_reg[0][8][7] 2default:defaultZ8-3333
´
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2C
/oledCtrl_insti_0/Example/\temp_delay_ms_reg[7] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0oledCtrl_insti_0/Example/\temp_delay_ms_reg[11] 2default:defaultZ8-3333
Ø
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3oledCtrl_insti_0/Example/\after_char_state_reg[22] 2default:defaultZ8-3333
±
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2I
5oledCtrl_insti_0/Example/\after_update_state_reg[22] 2default:defaultZ8-3333
±
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5oledCtrl_insti_0/Example/\after_update_state_reg[26] 2default:defaultZ8-3333
Ø
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3oledCtrl_insti_0/Example/\after_char_state_reg[26] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2B
.oledCtrl_insti_0/Example/\after_state_reg[96] 2default:defaultZ8-3333
Ø
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3oledCtrl_insti_0/Example/\after_page_state_reg[47] 2default:defaultZ8-3333
∑
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;oledCtrl_insti_0/Example/DELAY_COMP/\current_state_reg[12] 2default:defaultZ8-3333
∑
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2O
;oledCtrl_insti_0/Example/DELAY_COMP/\current_state_reg[30] 2default:defaultZ8-3333
ø
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2W
ColedCtrl_insti_0/Example/SPI_COMP/\FSM_onehot_current_state_reg[7] 2default:defaultZ8-3333
≠
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2E
1oledCtrl_insti_0/Example/\current_state_reg[143] 2default:defaultZ8-3333
Æ
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2oledCtrl_insti_0/\FSM_onehot_current_state_reg[4] 2default:defaultZ8-3333
≥
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2K
7oledCtrl_insti_0/Example/\current_screen_reg[1][12][6] 2default:defaultZ8-3333
≤
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6oledCtrl_insti_0/Example/\current_screen_reg[0][8][7] 2default:defaultZ8-3333
©
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2A
-oledCtrl_insti_0/Example/\after_state_reg[7] 2default:defaultZ8-3333
Æ
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2oledCtrl_insti_0/Example/\after_page_state_reg[9] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2B
.oledCtrl_insti_0/Example/\after_state_reg[22] 2default:defaultZ8-3333
Ø
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3oledCtrl_insti_0/Example/\after_page_state_reg[22] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0oledCtrl_insti_0/Example/\current_state_reg[96] 2default:defaultZ8-3333
ß
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+oledCtrl_insti_0/Example/\temp_char_reg[7] 2default:defaultZ8-3333
´
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/oledCtrl_insti_0/Example/\current_state_reg[7] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0oledCtrl_insti_0/Example/\current_state_reg[22] 2default:defaultZ8-3333
®
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,oledCtrl_insti_0/Example/\temp_addr_reg[10] 2default:defaultZ8-3333
µ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!\FSM_onehot_current_state_reg[7] 2default:default2

SpiCtrl__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[31] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[30] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[29] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[28] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[25] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[23] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[22] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[21] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[20] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[18] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[17] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[16] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[15] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[14] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[13] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[12] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[11] 2default:default2
Delay__12default:defaultZ8-3332
©
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[10] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[9] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[8] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[7] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[6] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[5] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[4] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[3] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[2] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\current_state_reg[1] 2default:default2
Delay__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[143] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[142] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[141] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[140] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[139] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[138] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[137] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[136] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[135] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[134] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[133] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[132] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[131] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[130] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[129] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[128] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[127] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[126] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[125] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[124] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[123] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[122] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[121] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[120] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[119] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[118] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[117] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[116] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[115] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[114] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[113] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[112] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[111] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[110] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[109] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[108] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[107] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[106] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[105] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[104] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[103] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[102] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[101] 2default:default2
OledEX2default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
\current_state_reg[100] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[99] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[98] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[97] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[96] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[95] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[94] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[93] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[92] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[91] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[90] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[89] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[88] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[87] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[86] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[83] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[81] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[80] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[79] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[78] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[77] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[76] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[75] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[73] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[72] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[71] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[70] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[68] 2default:default2
OledEX2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
\current_state_reg[67] 2default:default2
OledEX2default:defaultZ8-3332
‘
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14
¶
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\oledCtrl_inst/Init /\after_state_reg[15] 2default:defaultZ8-3333
¶
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2>
*\oledCtrl_inst/Init /\after_state_reg[30] 2default:defaultZ8-3333
≥
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2K
7\oledCtrl_inst/Init /DELAY_COMP/\current_state_reg[12] 2default:defaultZ8-3333
≥
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2K
7\oledCtrl_inst/Init /DELAY_COMP/\current_state_reg[30] 2default:defaultZ8-3333
ª
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2S
?\oledCtrl_inst/Init /SPI_COMP/\FSM_onehot_current_state_reg[7] 2default:defaultZ8-3333
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:02:04 ; elapsed = 00:02:16 . Memory (MB): peak = 742.113 ; gain = 594.520
2default:default
≠
%s*synth2ù
àFinished Applying XDC Timing Constraints : Time (s): cpu = 00:02:04 ; elapsed = 00:02:16 . Memory (MB): peak = 742.113 ; gain = 594.520
2default:default
6
%s*synth2'
Found timing loop:
2default:default
e
%s*synth2V
B     0: oledCtrl_insti_0/\oledCtrl_inst/Example /i_5/i_7/Z (MUX1)
2default:default
e
%s*synth2V
B     1: oledCtrl_insti_0/\oledCtrl_inst/Example /i_5/i_7/S (MUX1)
2default:default
e
%s*synth2V
B     2: oledCtrl_insti_0/\oledCtrl_inst/Example /i_5/i_7/Z (MUX1)
2default:default
µ
found timing loop.295*oasys2l
VU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_4bit.v2default:default2
382default:default8@Z8-295
6
%s*synth2'
Found timing loop:
2default:default
f
%s*synth2W
C     0: oledCtrl_insti_0/\oledCtrl_inst/Example /i_5/i_10/Z (MUX1)
2default:default
f
%s*synth2W
C     1: oledCtrl_insti_0/\oledCtrl_inst/Example /i_5/i_10/S (MUX1)
2default:default
f
%s*synth2W
C     2: oledCtrl_insti_0/\oledCtrl_inst/Example /i_5/i_10/Z (MUX1)
2default:default
µ
found timing loop.295*oasys2l
VU:/private/calculater/calculater.srcs/sources_1/imports/sources_1/new/BCD2ASCII_4bit.v2default:default2
382default:default8@Z8-295
õ
-inferred exception to break timing loop: '%s'326*oasys2U
Aset_disable_timing oledCtrl_insti_0/Example/i_5/i_7 -from S -to Z2default:defaultZ8-326
ú
-inferred exception to break timing loop: '%s'326*oasys2V
Bset_disable_timing oledCtrl_insti_0/Example/i_5/i_10 -from S -to Z2default:defaultZ8-326
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:02:05 ; elapsed = 00:02:17 . Memory (MB): peak = 742.113 ; gain = 594.520
2default:default
6
%s*synth2'
Found timing loop:
2default:default
;
%s*synth2,
     0: i_3973/Z (MUX1)
2default:default
;
%s*synth2,
     1: i_3973/S (MUX1)
2default:default
;
%s*synth2,
     2: i_3973/Z (MUX1)
2default:default
©
found timing loop.295*oasys2`
JU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v2default:default2
242default:default8@Z8-295
6
%s*synth2'
Found timing loop:
2default:default
;
%s*synth2,
     0: i_3974/Z (MUX1)
2default:default
;
%s*synth2,
     1: i_3974/S (MUX1)
2default:default
;
%s*synth2,
     2: i_3974/Z (MUX1)
2default:default
©
found timing loop.295*oasys2`
JU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v2default:default2
242default:default8@Z8-295
z
-inferred exception to break timing loop: '%s'326*oasys24
 set_false_path -through i_3973/Z2default:defaultZ8-326
z
-inferred exception to break timing loop: '%s'326*oasys24
 set_false_path -through i_3974/Z2default:defaultZ8-326
6
%s*synth2'
Found timing loop:
2default:default
;
%s*synth2,
     0: i_1720/O (LUT3)
2default:default
<
%s*synth2-
     1: i_1720/I0 (LUT3)
2default:default
;
%s*synth2,
     2: i_1720/O (LUT3)
2default:default
©
found timing loop.295*oasys2`
JU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v2default:default2
242default:default8@Z8-295
6
%s*synth2'
Found timing loop:
2default:default
;
%s*synth2,
     0: i_1719/O (LUT3)
2default:default
<
%s*synth2-
     1: i_1719/I0 (LUT3)
2default:default
;
%s*synth2,
     2: i_1719/O (LUT3)
2default:default
©
found timing loop.295*oasys2`
JU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v2default:default2
242default:default8@Z8-295
z
-inferred exception to break timing loop: '%s'326*oasys24
 set_false_path -through i_1719/O2default:defaultZ8-326
z
-inferred exception to break timing loop: '%s'326*oasys24
 set_false_path -through i_1720/O2default:defaultZ8-326
6
%s*synth2'
Found timing loop:
2default:default
;
%s*synth2,
     0: i_2780/O (LUT3)
2default:default
<
%s*synth2-
     1: i_2780/I0 (LUT3)
2default:default
;
%s*synth2,
     2: i_2780/O (LUT3)
2default:default
©
found timing loop.295*oasys2`
JU:/private/calculater/calculater.srcs/sources_1/new/keypadCalculatorOled.v2default:default2
242default:default8@Z8-295
z
-inferred exception to break timing loop: '%s'326*oasys24
 set_false_path -through i_2780/O2default:defaultZ8-326
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:02:16 ; elapsed = 00:02:29 . Memory (MB): peak = 853.676 ; gain = 706.082
2default:default
D
%s*synth25
!Gated Clock Conversion mode: off
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:02:17 ; elapsed = 00:02:30 . Memory (MB): peak = 853.676 ; gain = 706.082
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
™
%s*synth2ö
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:02:17 ; elapsed = 00:02:30 . Memory (MB): peak = 853.676 ; gain = 706.082
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:02:17 ; elapsed = 00:02:30 . Memory (MB): peak = 853.676 ; gain = 706.082
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
H
%s*synth29
%+------+----------------+----------+
2default:default
H
%s*synth29
%|      |BlackBox name   |Instances |
2default:default
H
%s*synth29
%+------+----------------+----------+
2default:default
H
%s*synth29
%|1     |CHAR_LIB_COMP_N |         1|
2default:default
H
%s*synth29
%+------+----------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
D
%s*synth25
!+------+----------------+------+
2default:default
D
%s*synth25
!|      |Cell            |Count |
2default:default
D
%s*synth25
!+------+----------------+------+
2default:default
D
%s*synth25
!|1     |CHAR_LIB_COMP_N |     1|
2default:default
D
%s*synth25
!|2     |BUFG            |     1|
2default:default
D
%s*synth25
!|3     |CARRY4          |    47|
2default:default
D
%s*synth25
!|4     |LUT1            |   119|
2default:default
D
%s*synth25
!|5     |LUT2            |   345|
2default:default
D
%s*synth25
!|6     |LUT3            |   231|
2default:default
D
%s*synth25
!|7     |LUT4            |   218|
2default:default
D
%s*synth25
!|8     |LUT5            |   379|
2default:default
D
%s*synth25
!|9     |LUT6            |  1421|
2default:default
D
%s*synth25
!|10    |MUXF7           |    34|
2default:default
D
%s*synth25
!|11    |MUXF8           |     3|
2default:default
D
%s*synth25
!|12    |FDCE            |    33|
2default:default
D
%s*synth25
!|13    |FDPE            |     2|
2default:default
D
%s*synth25
!|14    |FDRE            |   570|
2default:default
D
%s*synth25
!|15    |FDSE            |    23|
2default:default
D
%s*synth25
!|16    |IBUF            |     5|
2default:default
D
%s*synth25
!|17    |OBUF            |    13|
2default:default
D
%s*synth25
!+------+----------------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
m
%s*synth2^
J+------+------------------------------+--------------------------+------+
2default:default
m
%s*synth2^
J|      |Instance                      |Module                    |Cells |
2default:default
m
%s*synth2^
J+------+------------------------------+--------------------------+------+
2default:default
m
%s*synth2^
J|1     |top                           |                          |  3452|
2default:default
m
%s*synth2^
J|2     |  keypadCalculator_inst       |keypadCalculator          |   334|
2default:default
m
%s*synth2^
J|3     |    calculator_inst           |calculator                |   179|
2default:default
m
%s*synth2^
J|4     |      fsm_inst                |fsm                       |    54|
2default:default
m
%s*synth2^
J|5     |      shiftTwo                |shiftInputReg             |    55|
2default:default
m
%s*synth2^
J|6     |        SingleClkSigGen_one   |singleClkSigGen_9         |     3|
2default:default
m
%s*synth2^
J|7     |        SingleClkSigGen_three |singleClkSigGen_10        |     3|
2default:default
m
%s*synth2^
J|8     |        SingleClkSigGen_two   |singleClkSigGen_11        |     3|
2default:default
m
%s*synth2^
J|9     |      shiftOne                |shiftInputReg_5           |    55|
2default:default
m
%s*synth2^
J|10    |        SingleClkSigGen_one   |singleClkSigGen_6         |     3|
2default:default
m
%s*synth2^
J|11    |        SingleClkSigGen_three |singleClkSigGen_7         |     3|
2default:default
m
%s*synth2^
J|12    |        SingleClkSigGen_two   |singleClkSigGen_8         |     3|
2default:default
m
%s*synth2^
J|13    |      singleClkSigGen_valid   |singleClkSigGen           |     2|
2default:default
m
%s*synth2^
J|14    |    keypadController_inst     |keypadController          |   119|
2default:default
m
%s*synth2^
J|15    |      debouncer_1             |debouncer                 |     5|
2default:default
m
%s*synth2^
J|16    |      debouncer_2             |debouncer_2               |     4|
2default:default
m
%s*synth2^
J|17    |      slowest                 |slowclock__parameterized0 |    45|
2default:default
m
%s*synth2^
J|18    |      debouncer_3             |debouncer_3               |     6|
2default:default
m
%s*synth2^
J|19    |      debouncer_0             |debouncer_4               |     4|
2default:default
m
%s*synth2^
J|20    |    slowclock_inst            |slowclock                 |    36|
2default:default
m
%s*synth2^
J|21    |  oledCtrl_inst               |VerilogOLEDCtrl           |  3057|
2default:default
m
%s*synth2^
J|22    |    Example                   |OledEX                    |  1461|
2default:default
m
%s*synth2^
J|23    |      SPI_COMP                |SpiCtrl_0                 |    68|
2default:default
m
%s*synth2^
J|24    |      DELAY_COMP              |Delay_1                   |    89|
2default:default
m
%s*synth2^
J|25    |    Init                      |OledInit                  |  1583|
2default:default
m
%s*synth2^
J|26    |      SPI_COMP                |SpiCtrl                   |    67|
2default:default
m
%s*synth2^
J|27    |      DELAY_COMP              |Delay                     |   100|
2default:default
m
%s*synth2^
J+------+------------------------------+--------------------------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:02:18 ; elapsed = 00:02:30 . Memory (MB): peak = 853.676 ; gain = 706.082
2default:default
k
%s*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 947 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:02:18 ; elapsed = 00:02:31 . Memory (MB): peak = 853.676 ; gain = 706.082
2default:default
\
-Analyzing %s Unisim elements for replacement
17*netlist2
52default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-144
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1812default:default2
1142default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
˝
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:02:302default:default2
00:02:402default:default2
1101.8482default:default2
910.0432default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35
Ä
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.065 . Memory (MB): peak = 1101.848 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Feb 13 10:57:04 20142default:defaultZ17-206