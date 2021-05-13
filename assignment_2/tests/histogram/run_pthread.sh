#!/bin/bash
if [ -e /usr/bin/perf ] && [ -e histogram_datafiles ]
then
    printf "\e[92m---Starting benchmarking ~100MB Image---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./histogram-pthread histogram_datafiles/small.bmp \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking ~400MB Image---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./histogram-pthread histogram_datafiles/med.bmp \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking ~1.4GB Image---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./histogram-pthread histogram_datafiles/large.bmp

else
    echo "You need to have Perf in /usr/bin/perf and the input files in histogram_datafiles/"
fi