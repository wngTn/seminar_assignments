#!/bin/bash
if [ -e /usr/bin/perf ] && [ -e word_count_datafiles ]
then
    printf "\e[92m---Starting benchmarking 10MB---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./word_count-seq word_count_datafiles/word_10MB.txt 1 \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking 50MB---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./word_count-seq word_count_datafiles/word_50MB.txt 1 \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking 100MB---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./word_count-seq word_count_datafiles/word_100MB.txt 1

else
    echo "You need to have PERF in /usr/bin/perf and the input files in word_count_datafiles/"
fi