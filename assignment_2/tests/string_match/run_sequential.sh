#!/bin/bash
if [ -e /usr/bin/time ] && [ -e string_match_datafiles ]
then
    printf "\e[92m---Starting benchmarking 50MB---\n\e[0m" \
    && \
    perf stat \
    --repeat 10 \
    -e cache-misses \
    -e page-faults \
    -e cycles:u \
    -e instructions \
    ./string_match-seq string_match_datafiles/key_file_50MB.txt \
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
    ./string_match-seq string_match_datafiles/key_file_100MB.txt \
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
    ./string_match-seq string_match_datafiles/key_file_500MB.txt

else
    echo "You need to have TIME(1) in /usr/bin/time and the input files in string_match_datafiles/"
fi