#!/bin/bash
if [ -e /usr/bin/perf ] && [ -e matrix_file_A.txt ] && [ -e matrix_file_B.txt ]
then
    printf "\e[92m---Benchmarking 500x500 Matrices---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./matrix_multiply-seq 500 \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Benchmarking 750x750 Matrices---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./matrix_multiply-seq 750 \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Benchmarking 1000x1000 Matrices---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./matrix_multiply-seq 1000
    
else
    echo "You need to have Perf in /usr/bin/perf and matrix_file_A.txt and matrix_file_B.txt"
fi