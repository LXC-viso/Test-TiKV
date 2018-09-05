#!/bin/bash
perf record -F 99 -p $1 --call-graph=dwarf
perf script | c++filt | gprof2dot -f perf | dot -Tsvg -o cpu_graph.svg
