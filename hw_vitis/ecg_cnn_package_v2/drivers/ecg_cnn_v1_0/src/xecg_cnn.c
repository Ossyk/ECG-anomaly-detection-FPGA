// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xecg_cnn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEcg_cnn_CfgInitialize(XEcg_cnn *InstancePtr, XEcg_cnn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEcg_cnn_Start(XEcg_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_AP_CTRL) & 0x80;
    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XEcg_cnn_IsDone(XEcg_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XEcg_cnn_IsIdle(XEcg_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XEcg_cnn_IsReady(XEcg_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XEcg_cnn_EnableAutoRestart(XEcg_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_AP_CTRL, 0x80);
}

void XEcg_cnn_DisableAutoRestart(XEcg_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_AP_CTRL, 0);
}

void XEcg_cnn_Set_input_r_r(XEcg_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA, (u32)(Data));
    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA + 4, (u32)(Data >> 32));
}

u64 XEcg_cnn_Get_input_r_r(XEcg_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA);
    Data += (u64)XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA + 4) << 32;
    return Data;
}

void XEcg_cnn_Set_output_r_r(XEcg_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA, (u32)(Data));
    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA + 4, (u32)(Data >> 32));
}

u64 XEcg_cnn_Get_output_r_r(XEcg_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA);
    Data += (u64)XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA + 4) << 32;
    return Data;
}

void XEcg_cnn_InterruptGlobalEnable(XEcg_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_GIE, 1);
}

void XEcg_cnn_InterruptGlobalDisable(XEcg_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_GIE, 0);
}

void XEcg_cnn_InterruptEnable(XEcg_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_IER);
    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_IER, Register | Mask);
}

void XEcg_cnn_InterruptDisable(XEcg_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_IER);
    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_IER, Register & (~Mask));
}

void XEcg_cnn_InterruptClear(XEcg_cnn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEcg_cnn_WriteReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_ISR, Mask);
}

u32 XEcg_cnn_InterruptGetEnabled(XEcg_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_IER);
}

u32 XEcg_cnn_InterruptGetStatus(XEcg_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEcg_cnn_ReadReg(InstancePtr->Ctrl_BaseAddress, XECG_CNN_CTRL_ADDR_ISR);
}

