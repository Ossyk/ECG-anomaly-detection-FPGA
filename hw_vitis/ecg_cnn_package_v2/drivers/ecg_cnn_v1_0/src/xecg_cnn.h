// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XECG_CNN_H
#define XECG_CNN_H

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
#include "xecg_cnn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Ctrl_BaseAddress;
} XEcg_cnn_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XEcg_cnn;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEcg_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEcg_cnn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEcg_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEcg_cnn_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XEcg_cnn_Initialize(XEcg_cnn *InstancePtr, UINTPTR BaseAddress);
XEcg_cnn_Config* XEcg_cnn_LookupConfig(UINTPTR BaseAddress);
#else
int XEcg_cnn_Initialize(XEcg_cnn *InstancePtr, u16 DeviceId);
XEcg_cnn_Config* XEcg_cnn_LookupConfig(u16 DeviceId);
#endif
int XEcg_cnn_CfgInitialize(XEcg_cnn *InstancePtr, XEcg_cnn_Config *ConfigPtr);
#else
int XEcg_cnn_Initialize(XEcg_cnn *InstancePtr, const char* InstanceName);
int XEcg_cnn_Release(XEcg_cnn *InstancePtr);
#endif

void XEcg_cnn_Start(XEcg_cnn *InstancePtr);
u32 XEcg_cnn_IsDone(XEcg_cnn *InstancePtr);
u32 XEcg_cnn_IsIdle(XEcg_cnn *InstancePtr);
u32 XEcg_cnn_IsReady(XEcg_cnn *InstancePtr);
void XEcg_cnn_EnableAutoRestart(XEcg_cnn *InstancePtr);
void XEcg_cnn_DisableAutoRestart(XEcg_cnn *InstancePtr);

void XEcg_cnn_Set_input_r_r(XEcg_cnn *InstancePtr, u64 Data);
u64 XEcg_cnn_Get_input_r_r(XEcg_cnn *InstancePtr);
void XEcg_cnn_Set_output_r_r(XEcg_cnn *InstancePtr, u64 Data);
u64 XEcg_cnn_Get_output_r_r(XEcg_cnn *InstancePtr);

void XEcg_cnn_InterruptGlobalEnable(XEcg_cnn *InstancePtr);
void XEcg_cnn_InterruptGlobalDisable(XEcg_cnn *InstancePtr);
void XEcg_cnn_InterruptEnable(XEcg_cnn *InstancePtr, u32 Mask);
void XEcg_cnn_InterruptDisable(XEcg_cnn *InstancePtr, u32 Mask);
void XEcg_cnn_InterruptClear(XEcg_cnn *InstancePtr, u32 Mask);
u32 XEcg_cnn_InterruptGetEnabled(XEcg_cnn *InstancePtr);
u32 XEcg_cnn_InterruptGetStatus(XEcg_cnn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
