@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.

set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;C:/Xilinx/SDK/2013.4/bin/nt64;C:/Xilinx/Vivado/2013.4/ids_lite/EDK/bin/nt64;C:/Xilinx/Vivado/2013.4/ids_lite/EDK/lib/nt64;C:/Xilinx/Vivado/2013.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2013.4/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2013.4/bin;%PATH%
set XILINX_PLANAHEAD=C:/Xilinx/Vivado/2013.4

xelab -m64 --debug typical --relax -L work -L unisims_ver -L unimacro_ver -L secureip --snapshot fsm_tb_behav --prj U:/private/calculater/calculater.sim/sim_1/behav/fsm_tb.prj   work.fsm_tb   work.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
