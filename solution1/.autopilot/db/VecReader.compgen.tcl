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
    id 7 \
    name ddr0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ddr0 \
    op interface \
    ports { m_axi_ddr0_AWVALID { O 1 bit } m_axi_ddr0_AWREADY { I 1 bit } m_axi_ddr0_AWADDR { O 32 vector } m_axi_ddr0_AWID { O 1 vector } m_axi_ddr0_AWLEN { O 32 vector } m_axi_ddr0_AWSIZE { O 3 vector } m_axi_ddr0_AWBURST { O 2 vector } m_axi_ddr0_AWLOCK { O 2 vector } m_axi_ddr0_AWCACHE { O 4 vector } m_axi_ddr0_AWPROT { O 3 vector } m_axi_ddr0_AWQOS { O 4 vector } m_axi_ddr0_AWREGION { O 4 vector } m_axi_ddr0_AWUSER { O 1 vector } m_axi_ddr0_WVALID { O 1 bit } m_axi_ddr0_WREADY { I 1 bit } m_axi_ddr0_WDATA { O 128 vector } m_axi_ddr0_WSTRB { O 16 vector } m_axi_ddr0_WLAST { O 1 bit } m_axi_ddr0_WID { O 1 vector } m_axi_ddr0_WUSER { O 1 vector } m_axi_ddr0_ARVALID { O 1 bit } m_axi_ddr0_ARREADY { I 1 bit } m_axi_ddr0_ARADDR { O 32 vector } m_axi_ddr0_ARID { O 1 vector } m_axi_ddr0_ARLEN { O 32 vector } m_axi_ddr0_ARSIZE { O 3 vector } m_axi_ddr0_ARBURST { O 2 vector } m_axi_ddr0_ARLOCK { O 2 vector } m_axi_ddr0_ARCACHE { O 4 vector } m_axi_ddr0_ARPROT { O 3 vector } m_axi_ddr0_ARQOS { O 4 vector } m_axi_ddr0_ARREGION { O 4 vector } m_axi_ddr0_ARUSER { O 1 vector } m_axi_ddr0_RVALID { I 1 bit } m_axi_ddr0_RREADY { O 1 bit } m_axi_ddr0_RDATA { I 128 vector } m_axi_ddr0_RLAST { I 1 bit } m_axi_ddr0_RID { I 1 vector } m_axi_ddr0_RUSER { I 1 vector } m_axi_ddr0_RRESP { I 2 vector } m_axi_ddr0_BVALID { I 1 bit } m_axi_ddr0_BREADY { O 1 bit } m_axi_ddr0_BRESP { I 2 vector } m_axi_ddr0_BID { I 1 vector } m_axi_ddr0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name fifoA21 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fifoA21 \
    op interface \
    ports { fifoA21_din { O 128 vector } fifoA21_full_n { I 1 bit } fifoA21_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
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
    id 10 \
    name readRep \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_readRep \
    op interface \
    ports { readRep { I 32 vector } } \
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
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


