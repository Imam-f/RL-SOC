// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XVECDOTPRODUCT_H
#define XVECDOTPRODUCT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xvecdotproduct_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
    u32 Control_r_BaseAddress;
} XVecdotproduct_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 Control_r_BaseAddress;
    u32 IsReady;
} XVecdotproduct;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVecdotproduct_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVecdotproduct_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVecdotproduct_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVecdotproduct_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XVecdotproduct_Initialize(XVecdotproduct *InstancePtr, u16 DeviceId);
XVecdotproduct_Config* XVecdotproduct_LookupConfig(u16 DeviceId);
int XVecdotproduct_CfgInitialize(XVecdotproduct *InstancePtr, XVecdotproduct_Config *ConfigPtr);
#else
int XVecdotproduct_Initialize(XVecdotproduct *InstancePtr, const char* InstanceName);
int XVecdotproduct_Release(XVecdotproduct *InstancePtr);
#endif

void XVecdotproduct_Start(XVecdotproduct *InstancePtr);
u32 XVecdotproduct_IsDone(XVecdotproduct *InstancePtr);
u32 XVecdotproduct_IsIdle(XVecdotproduct *InstancePtr);
u32 XVecdotproduct_IsReady(XVecdotproduct *InstancePtr);
void XVecdotproduct_EnableAutoRestart(XVecdotproduct *InstancePtr);
void XVecdotproduct_DisableAutoRestart(XVecdotproduct *InstancePtr);

void XVecdotproduct_Set_readRep(XVecdotproduct *InstancePtr, u32 Data);
u32 XVecdotproduct_Get_readRep(XVecdotproduct *InstancePtr);
void XVecdotproduct_Set_vecA(XVecdotproduct *InstancePtr, u64 Data);
u64 XVecdotproduct_Get_vecA(XVecdotproduct *InstancePtr);
void XVecdotproduct_Set_vecB(XVecdotproduct *InstancePtr, u64 Data);
u64 XVecdotproduct_Get_vecB(XVecdotproduct *InstancePtr);
void XVecdotproduct_Set_scaC(XVecdotproduct *InstancePtr, u64 Data);
u64 XVecdotproduct_Get_scaC(XVecdotproduct *InstancePtr);

void XVecdotproduct_InterruptGlobalEnable(XVecdotproduct *InstancePtr);
void XVecdotproduct_InterruptGlobalDisable(XVecdotproduct *InstancePtr);
void XVecdotproduct_InterruptEnable(XVecdotproduct *InstancePtr, u32 Mask);
void XVecdotproduct_InterruptDisable(XVecdotproduct *InstancePtr, u32 Mask);
void XVecdotproduct_InterruptClear(XVecdotproduct *InstancePtr, u32 Mask);
u32 XVecdotproduct_InterruptGetEnabled(XVecdotproduct *InstancePtr);
u32 XVecdotproduct_InterruptGetStatus(XVecdotproduct *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
