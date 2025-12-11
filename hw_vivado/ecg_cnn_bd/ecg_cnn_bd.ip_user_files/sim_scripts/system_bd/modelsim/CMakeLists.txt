# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
# Tool Version Limit: 2025.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(ecg_cnn)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xecg_cnn.c)
collect (PROJECT_LIB_SOURCES xecg_cnn_sinit.c)
collect (PROJECT_LIB_SOURCES xecg_cnn_linux.c)
collect (PROJECT_LIB_SOURCES xecg_cnn_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xecg_cnn.h)
collect (PROJECT_LIB_HEADERS xecg_cnn_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(ecg_cnn STATIC ${_sources})
set_target_properties(ecg_cnn PROPERTIES LINKER_LANGUAGE C)

