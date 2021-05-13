#!/bin/bash
if [ -e /usr/bin/perf ] && [ -e linear_regression_datafiles ]
then
    printf "\e[92m---Starting benchmarking 50MB---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./linear_regression linear_regression_datafiles/key_file_50MB.txt \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking 100MB---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./linear_regression linear_regression_datafiles/key_file_100MB.txt  \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking 500MB---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./linear_regression linear_regression_datafiles/key_file_500MB.txt

else
    echo "You need to have Perf in /usr/bin/perf and the input files in linear_regression_datafiles/"
fi