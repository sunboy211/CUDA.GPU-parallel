# CUDA.GPU-parallel
How to use GPU in parallel program

两种Intel CPU：486SX(没有内置FPU) 486DX(有内置FPU)
FPU(浮点运算单元)

奔腾系列开始：FPU成为CPU一部分
为了提高FPU性能，Nvidia引入MMX,SSE系列 向量处理单元 
即游戏中图像坐标变换操作 催生了GPU

GPGPU 通用图形处理器

开发语言：统一计算设备架构CUDA---允许GPGPU程序员开发GPU代码而无需学习OpenGL的计算机图形学知识
对手：OpenCL语言
基于C语言(用于CPU端，和GPU端几乎完全一样，只使用特定关键词区分主机端和设备端) 由CUDA编译器来决定在哪个端运行

imflipG.cu:将图像读入CPU端数组
