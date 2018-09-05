#!/bin/bash
# 通过pid，记录该进程的内核数据perf.data，并根据该数据生成调用关系图、CPU-时间图和函数调用的CPU火焰图

cd func_call
./perf.sh $1 &

cd ../cpu_time
./perf.sh $1 &

cd ../fire_pic
./perf.sh $1 &


