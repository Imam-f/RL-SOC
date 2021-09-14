# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
readRep { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
}
dict set axilite_register_dict control $port_control


set port_control_r {
vecA { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
vecB { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
scaC { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control_r $port_control_r


