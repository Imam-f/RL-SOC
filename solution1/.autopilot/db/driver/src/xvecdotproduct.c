// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvecdotproduct.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVecdotproduct_CfgInitialize(XVecdotproduct *InstancePtr, XVecdotproduct_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVecdotproduct_Start(XVecdotproduct *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_AP_CTRL) & 0x80;
    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVecdotproduct_IsDone(XVecdotproduct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVecdotproduct_IsIdle(XVecdotproduct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVecdotproduct_IsReady(XVecdotproduct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVecdotproduct_EnableAutoRestart(XVecdotproduct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_AP_CTRL, 0x80);
}

void XVecdotproduct_DisableAutoRestart(XVecdotproduct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_AP_CTRL, 0);
}

void XVecdotproduct_Set_readRep(XVecdotproduct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_BaseAddress, XVECDOTPRODUCT_CONTROL_ADDR_READREP_DATA, Data);
}

u32 XVecdotproduct_Get_readRep(XVecdotproduct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_BaseAddress, XVECDOTPRODUCT_CONTROL_ADDR_READREP_DATA);
    return Data;
}

void XVecdotproduct_Set_vecA(XVecdotproduct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECA_DATA, (u32)(Data));
    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECA_DATA + 4, (u32)(Data >> 32));
}

u64 XVecdotproduct_Get_vecA(XVecdotproduct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECA_DATA);
    Data += (u64)XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECA_DATA + 4) << 32;
    return Data;
}

void XVecdotproduct_Set_vecB(XVecdotproduct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECB_DATA, (u32)(Data));
    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECB_DATA + 4, (u32)(Data >> 32));
}

u64 XVecdotproduct_Get_vecB(XVecdotproduct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECB_DATA);
    Data += (u64)XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_VECB_DATA + 4) << 32;
    return Data;
}

void XVecdotproduct_Set_scaC(XVecdotproduct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_SCAC_DATA, (u32)(Data));
    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_SCAC_DATA + 4, (u32)(Data >> 32));
}

u64 XVecdotproduct_Get_scaC(XVecdotproduct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_SCAC_DATA);
    Data += (u64)XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_SCAC_DATA + 4) << 32;
    return Data;
}

void XVecdotproduct_InterruptGlobalEnable(XVecdotproduct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_GIE, 1);
}

void XVecdotproduct_InterruptGlobalDisable(XVecdotproduct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_GIE, 0);
}

void XVecdotproduct_InterruptEnable(XVecdotproduct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_IER);
    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_IER, Register | Mask);
}

void XVecdotproduct_InterruptDisable(XVecdotproduct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_IER);
    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_IER, Register & (~Mask));
}

void XVecdotproduct_InterruptClear(XVecdotproduct *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVecdotproduct_WriteReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_ISR, Mask);
}

u32 XVecdotproduct_InterruptGetEnabled(XVecdotproduct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_IER);
}

u32 XVecdotproduct_InterruptGetStatus(XVecdotproduct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVecdotproduct_ReadReg(InstancePtr->Control_r_BaseAddress, XVECDOTPRODUCT_CONTROL_R_ADDR_ISR);
}

