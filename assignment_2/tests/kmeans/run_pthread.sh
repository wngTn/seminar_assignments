#!/bin/bash
if [ -e /usr/bin/perf ]
then
    printf "\e[92m---Starting benchmarking d: 512, c: 512. p: 1024---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./kmeans-pthread -d 512 -c 512 -p 1024 -s 256 \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking d: 1024, c: 1024. p: 2048---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./kmeans-pthread -d 1024 -c 1024 -p 2048 -s 256 \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking d: 2048, c: 1024, p: 2048---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./kmeans-pthread -d 2048 -c 1024 -p 2048 -s 256 \

else
    echo "You need to have Perf in /usr/bin/perf"
fi