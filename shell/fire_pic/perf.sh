#!/bin/bash
perf record -F 99 -e cpu-clock -g -p $1 -- sleep 10
perf script -i perf.data &> perf.unfold
../FlameGraph/stackcollapse-perf.pl perf.unfold &> perf.folded
../FlameGraph/flamegraph.pl perf.folded > fire_perf.svg
