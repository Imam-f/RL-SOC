############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Tutorial5
set_top VecDotProduct
add_files Tutorial5/ComputationModule.cpp -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/ComputationModule.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/DataConfig.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/DataPack.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/InterfaceModule.cpp -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/InterfaceModule.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/Stream.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/Top.cpp -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files Tutorial5/Top.h -cflags "-std=c++11 -DHLSLIB_SYNTHESIS"
add_files -tb Tutorial5/Top_tb.cpp -cflags "-DHLSLIB_SYNTHESIS -std=c++11"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_interface  -default_slave_interface none -m_axi_addr64=0 -m_axi_alignment_byte_size 0 -m_axi_auto_max_ports=0 -m_axi_latency 0 -m_axi_max_bitwidth 1024 -m_axi_max_read_burst_length 16 -m_axi_max_widen_bitwidth 0 -m_axi_max_write_burst_length 16 -m_axi_min_bitwidth 8 -m_axi_num_read_outstanding 16 -m_axi_num_write_outstanding 16 -m_axi_offset off -register_io off -s_axilite_data64=0
source "./Tutorial5/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -enable_dataflow_profiling -trace_level all
export_design -flow syn -rtl verilog -format ip_catalog
