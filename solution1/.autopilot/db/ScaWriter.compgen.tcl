# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name fifoC325 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifoC325 \
    op interface \
    ports { fifoC325_dout { I 32 vector } fifoC325_empty_n { I 1 bit } fifoC325_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name ddr2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ddr2 \
    op interface \
    ports { m_axi_ddr2_AWVALID { O 1 bit } m_axi_ddr2_AWREADY { I 1 bit } m_axi_ddr2_AWADDR { O 32 vector } m_axi_ddr2_AWID { O 1 vector } m_axi_ddr2_AWLEN { O 32 vector } m_axi_ddr2_AWSIZE { O 3 vector } m_axi_ddr2_AWBURST { O 2 vector } m_axi_ddr2_AWLOCK { O 2 vector } m_axi_ddr2_AWCACHE { O 4 vector } m_axi_ddr2_AWPROT { O 3 vector } m_axi_ddr2_AWQOS { O 4 vector } m_axi_ddr2_AWREGION { O 4 vector } m_axi_ddr2_AWUSER { O 1 vector } m_axi_ddr2_WVALID { O 1 bit } m_axi_ddr2_WREADY { I 1 bit } m_axi_ddr2_WDATA { O 32 vector } m_axi_ddr2_WSTRB { O 4 vector } m_axi_ddr2_WLAST { O 1 bit } m_axi_ddr2_WID { O 1 vector } m_axi_ddr2_WUSER { O 1 vector } m_axi_ddr2_ARVALID { O 1 bit } m_axi_ddr2_ARREADY { I 1 bit } m_axi_ddr2_ARADDR { O 32 vector } m_axi_ddr2_ARID { O 1 vector } m_axi_ddr2_ARLEN { O 32 vector } m_axi_ddr2_ARSIZE { O 3 vector } m_axi_ddr2_ARBURST { O 2 vector } m_axi_ddr2_ARLOCK { O 2 vector } m_axi_ddr2_ARCACHE { O 4 vector } m_axi_ddr2_ARPROT { O 3 vector } m_axi_ddr2_ARQOS { O 4 vector } m_axi_ddr2_ARREGION { O 4 vector } m_axi_ddr2_ARUSER { O 1 vector } m_axi_ddr2_RVALID { I 1 bit } m_axi_ddr2_RREADY { O 1 bit } m_axi_ddr2_RDATA { I 32 vector } m_axi_ddr2_RLAST { I 1 bit } m_axi_ddr2_RID { I 1 vector } m_axi_ddr2_RUSER { I 1 vector } m_axi_ddr2_RRESP { I 2 vector } m_axi_ddr2_BVALID { I 1 bit } m_axi_ddr2_BREADY { O 1 bit } m_axi_ddr2_BRESP { I 2 vector } m_axi_ddr2_BID { I 1 vector } m_axi_ddr2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name ddr \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ddr \
    op interface \
    ports { ddr_dout { I 64 vector } ddr_empty_n { I 1 bit } ddr_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


