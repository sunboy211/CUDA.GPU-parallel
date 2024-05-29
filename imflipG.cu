#include<cuda.h>
#include<cuda_runtime.h>
#include<stdio.h>
#include<stdint.h>
#include<iostream>
#include<string.h>
#include<ctype.h>
#include<stdlib.h>
#include<device_launch_parameters.h>

typedef unsigned int ui;
typedef unsigned long ul;
typedef unsigned char uch;

uch *TheImg,*CopyImg;
uch *GPUImg,*GPUCopyImg,*GPUResult;

//cudaGetDeviceCount() 一共几个GPU
//cudaSetDevice() 选择哪个GPU
//cudaGetDeviceProperties GPU参数
