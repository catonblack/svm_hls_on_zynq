// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xsvm_classifier.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSvm_classifier_CfgInitialize(XSvm_classifier *InstancePtr, XSvm_classifier_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSvm_classifier_Start(XSvm_classifier *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_AP_CTRL) & 0x80;
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSvm_classifier_IsDone(XSvm_classifier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSvm_classifier_IsIdle(XSvm_classifier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSvm_classifier_IsReady(XSvm_classifier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSvm_classifier_EnableAutoRestart(XSvm_classifier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XSvm_classifier_DisableAutoRestart(XSvm_classifier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_AP_CTRL, 0);
}

void XSvm_classifier_Set_in_V(XSvm_classifier *InstancePtr, XSvm_classifier_In_v Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 0, Data.word_0);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 4, Data.word_1);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 8, Data.word_2);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 12, Data.word_3);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 16, Data.word_4);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 20, Data.word_5);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 24, Data.word_6);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 28, Data.word_7);
}

XSvm_classifier_In_v XSvm_classifier_Get_in_V(XSvm_classifier *InstancePtr) {
    XSvm_classifier_In_v Data;

    Data.word_0 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 0);
    Data.word_1 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 4);
    Data.word_2 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 8);
    Data.word_3 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 12);
    Data.word_4 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 16);
    Data.word_5 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 20);
    Data.word_6 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 24);
    Data.word_7 = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IN_V_DATA + 28);
    return Data;
}

u32 XSvm_classifier_Get_out_r(XSvm_classifier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_OUT_R_DATA);
    return Data;
}

u32 XSvm_classifier_Get_out_r_vld(XSvm_classifier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_OUT_R_CTRL);
    return Data & 0x1;
}

void XSvm_classifier_InterruptGlobalEnable(XSvm_classifier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_GIE, 1);
}

void XSvm_classifier_InterruptGlobalDisable(XSvm_classifier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_GIE, 0);
}

void XSvm_classifier_InterruptEnable(XSvm_classifier *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IER);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IER, Register | Mask);
}

void XSvm_classifier_InterruptDisable(XSvm_classifier *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IER);
    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IER, Register & (~Mask));
}

void XSvm_classifier_InterruptClear(XSvm_classifier *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSvm_classifier_WriteReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_ISR, Mask);
}

u32 XSvm_classifier_InterruptGetEnabled(XSvm_classifier *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_IER);
}

u32 XSvm_classifier_InterruptGetStatus(XSvm_classifier *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSvm_classifier_ReadReg(InstancePtr->Axilites_BaseAddress, XSVM_CLASSIFIER_AXILITES_ADDR_ISR);
}

