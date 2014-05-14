
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
n
Command: %s
53*	vivadotcl2F
2synth_design -top keypadTest -part xc7z020clg484-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
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
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 234.020 ; gain = 86.457
2default:default
≈
synthesizing module '%s'638*oasys2

keypadTest2default:default2V
@U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keypadTest.v2default:default2
232default:default8@Z8-638
œ
synthesizing module '%s'638*oasys2
	slowclock2default:default2a
KU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-638
S
%s*synth2D
0	Parameter LENGTH bound to: 16 - type: integer 
2default:default
ä
%done synthesizing module '%s' (%s#%s)256*oasys2
	slowclock2default:default2
12default:default2
12default:default2a
KU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-256
ﬂ
synthesizing module '%s'638*oasys2-
slowclock__parameterized02default:default2a
KU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-638
S
%s*synth2D
0	Parameter LENGTH bound to: 20 - type: integer 
2default:default
ö
%done synthesizing module '%s' (%s#%s)256*oasys2-
slowclock__parameterized02default:default2
12default:default2
12default:default2a
KU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/slowclock.v2default:default2
262default:default8@Z8-256
—
synthesizing module '%s'638*oasys2$
keypadController2default:default2\
FU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keypadController.v2default:default2
232default:default8@Z8-638
Õ
synthesizing module '%s'638*oasys2
	debouncer2default:default2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bouncer.v2default:default2
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
±
default block is never used226*oasys2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bouncer.v2default:default2
532default:default8@Z8-226
±
default block is never used226*oasys2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bouncer.v2default:default2
822default:default8@Z8-226
à
%done synthesizing module '%s' (%s#%s)256*oasys2
	debouncer2default:default2
22default:default2
12default:default2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bouncer.v2default:default2
332default:default8@Z8-256
å
%done synthesizing module '%s' (%s#%s)256*oasys2$
keypadController2default:default2
32default:default2
12default:default2\
FU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keypadController.v2default:default2
232default:default8@Z8-256
…
synthesizing module '%s'638*oasys2 
keyConverter2default:default2X
BU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keyConverter.v2default:default2
232default:default8@Z8-638
Ñ
%done synthesizing module '%s' (%s#%s)256*oasys2 
keyConverter2default:default2
42default:default2
12default:default2X
BU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keyConverter.v2default:default2
232default:default8@Z8-256
À
synthesizing module '%s'638*oasys2
bin2bcd2default:default2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bin2bcd.v2default:default2
772default:default8@Z8-638
»
synthesizing module '%s'638*oasys2
add32default:default2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bin2bcd.v2default:default2
442default:default8@Z8-638
É
%done synthesizing module '%s' (%s#%s)256*oasys2
add32default:default2
52default:default2
12default:default2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bin2bcd.v2default:default2
442default:default8@Z8-256
Ü
%done synthesizing module '%s' (%s#%s)256*oasys2
bin2bcd2default:default2
62default:default2
12default:default2_
IU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/bin2bcd.v2default:default2
772default:default8@Z8-256
‚
synthesizing module '%s'638*oasys2&
SevenSegmenDecoder2default:default2k
UU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/SevenSegmentDecoder.v2default:default2
242default:default8@Z8-638
ù
%done synthesizing module '%s' (%s#%s)256*oasys2&
SevenSegmenDecoder2default:default2
72default:default2
12default:default2k
UU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/SevenSegmentDecoder.v2default:default2
242default:default8@Z8-256
’
synthesizing module '%s'638*oasys2 
sevenSegCtrl2default:default2d
NU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/sevenSegCtrl.v2default:default2
262default:default8@Z8-638
ê
%done synthesizing module '%s' (%s#%s)256*oasys2 
sevenSegCtrl2default:default2
82default:default2
12default:default2d
NU:/private/keypadCtrl/keypadCtrl.srcs/sources_1/imports/verilog/sevenSegCtrl.v2default:default2
262default:default8@Z8-256
Ä
%done synthesizing module '%s' (%s#%s)256*oasys2

keypadTest2default:default2
92default:default2
12default:default2V
@U:/private/keypadCtrl/keypadCtrl.srcs/sources_1/new/keypadTest.v2default:default2
232default:default8@Z8-256
ú
%s*synth2å
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 267.203 ; gain = 119.641
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
í
Parsing XDC File [%s]
179*designutils2\
HU:/private/keypadCtrl/keypadCtrl.srcs/constrs_1/new/keypadTest_const.xdc2default:defaultZ20-179
õ
Finished Parsing XDC File [%s]
178*designutils2\
HU:/private/keypadCtrl/keypadCtrl.srcs/constrs_1/new/keypadTest_const.xdc2default:defaultZ20-178
±
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2\
HU:/private/keypadCtrl/keypadCtrl.srcs/constrs_1/new/keypadTest_const.xdc2default:default2^
JU:/private/keypadCtrl/keypadCtrl.runs/synth_1/.Xil/keypadTest_propImpl.xdc2default:defaultZ1-236
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
êFinished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 481.164 ; gain = 333.602
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 481.164 ; gain = 333.602
2default:default
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
z
%s*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 554.961 ; gain = 407.398
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
.	                7 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 3     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 5     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   3 Input      7 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   5 Input      4 Bit        Muxes := 3     
2default:default
Q
%s*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 8     
2default:default
Q
%s*synth2B
.	   4 Input      2 Bit        Muxes := 4     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
6
%s*synth2'
Module keypadTest 
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
.	   5 Input      4 Bit        Muxes := 3     
2default:default
Q
%s*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:default
0
%s*synth2!
Module add3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
3
%s*synth2$
Module bin2bcd 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
>
%s*synth2/
Module SevenSegmenDecoder 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
8
%s*synth2)
Module sevenSegCtrl 
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
.	                7 Bit    Registers := 1     
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
.	   3 Input      7 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:default
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 565.496 ; gain = 417.934
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
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
2default:default
≠
%s*synth2ù
àFinished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
2default:default
D
%s*synth25
!Gated Clock Conversion mode: off
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
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
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
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
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|      |Cell   |Count |
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|1     |BUFG   |     1|
2default:default
;
%s*synth2,
|2     |CARRY4 |     9|
2default:default
;
%s*synth2,
|3     |LUT1   |    36|
2default:default
;
%s*synth2,
|4     |LUT2   |     3|
2default:default
;
%s*synth2,
|5     |LUT3   |     9|
2default:default
;
%s*synth2,
|6     |LUT4   |     4|
2default:default
;
%s*synth2,
|7     |LUT5   |     3|
2default:default
;
%s*synth2,
|8     |LUT6   |    14|
2default:default
;
%s*synth2,
|9     |FDRE   |    65|
2default:default
;
%s*synth2,
|10    |IBUF   |     5|
2default:default
;
%s*synth2,
|11    |OBUF   |    14|
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
`
%s*synth2Q
=+------+-----------------+--------------------------+------+
2default:default
`
%s*synth2Q
=|      |Instance         |Module                    |Cells |
2default:default
`
%s*synth2Q
=+------+-----------------+--------------------------+------+
2default:default
`
%s*synth2Q
=|1     |top              |                          |   163|
2default:default
`
%s*synth2Q
=|2     |  slowest        |slowclock__parameterized0 |    45|
2default:default
`
%s*synth2Q
=|3     |  slowclock_i    |slowclock                 |    36|
2default:default
`
%s*synth2Q
=|4     |  sevenSegCtrl_i |sevenSegCtrl              |    12|
2default:default
`
%s*synth2Q
=|5     |  keypad         |keypadController          |    50|
2default:default
`
%s*synth2Q
=|6     |    debouncer_1  |debouncer                 |     5|
2default:default
`
%s*synth2Q
=|7     |    debouncer_2  |debouncer_0               |     4|
2default:default
`
%s*synth2Q
=|8     |    debouncer_3  |debouncer_1               |     5|
2default:default
`
%s*synth2Q
=|9     |    debouncer_0  |debouncer_2               |     4|
2default:default
`
%s*synth2Q
=+------+-----------------+--------------------------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
2default:default
i
%s*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 587.613 ; gain = 440.051
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
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
02default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:362default:default2
00:00:402default:default2
976.4532default:default2
790.4612default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.038 . Memory (MB): peak = 976.453 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Feb 05 16:38:02 20142default:defaultZ17-206