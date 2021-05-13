#!/bin/bash
if [ -e /usr/bin/perf ]
then
    printf "\e[92m---Starting benchmarking 1024x4096---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./pca -r 1024 -c 4096 -s 256 \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking 2048x8192---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./pca -r 2048 -c 8192 -s 256 \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking 4096x16384---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./pca -r 4096 -c 16384 -s 256

else
    echo "You need to have perf in /usr/bin/perf"
fi