############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Tutorial5
add_files Tutorial5/ComputationModule.cpp
add_files Tutorial5/ComputationModule.h
add_files Tutorial5/DataConfig.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/DataPack.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/InterfaceModule.cpp
add_files Tutorial5/InterfaceModule.h
add_files Tutorial5/Stream.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/Top.cpp
add_files Tutorial5/Top.h
add_files -tb Tutorial5/Top_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-fbvb900-2-e}
create_clock -period 10 -name default
#source "./Tutorial5/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
