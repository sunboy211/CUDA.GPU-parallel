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
//GPUProp.maxGridSize[0],GPUProp.maxGridSize[1],GPUProp.maxGridSize[2]分别表示x,y,z维度上可启动的最大线程块数

//下面是Nvidia API初始化并查询GPU
int main(int argc,char** argv){
  cudaError_t cudaStatus,cudaStatus2;
  cudaDeviceProp GPUprop;
  ul SupportedKBlocks,SupportedMBlocks,MaxThrPerBlk;
  char SupportedBlocks[100];

  int NumGPUs=0; cudaGetDeviceCount(&NumGPUs);
  if(NumGPUs==0){
    printf("\n No cuda device is available.\n"); exit(EXIT_FAILURE);
  }
  cudaStatus=cudaSetDevice(0);
  if(cudaStatus!=cudaSuccess){
    fprintf(stderr,"cudasetDevice failed!No cuda-capable GPU is installed?");
    exit(EXIT_FAILURE);
  }
  cudaGetDeviceProperties(&GPUprop,0);
  SupportedKBlocks=(ui)GPUProp.maxGridSize[0] * (ui)GPUProp.maxGridSize[1] * (ui)GPUProp.maxGridSize[2] / 1024;
  SupportedMBlocks=SupportedKBlocks / 1024;
  MaxThrPerBlk=(ui)GPUProp.maxThreadsPerBlock;
}
