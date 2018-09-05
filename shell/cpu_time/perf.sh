#!/bin/bash
perf timechart -p $1 record -- sleep 10
perf timechart
##生成output.svg
