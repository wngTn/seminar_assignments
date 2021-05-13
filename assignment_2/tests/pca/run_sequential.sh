#!/bin/bash
if [ -e /usr/bin/time ]
then
    printf "\e[92m---Starting benchmarking 1024x4096---\n\e[0m" \
    && \
    /usr/bin/time -f \
    "Command that was run: %C
    Elapsed (wall clock) time (m:ss): %Es
    User time: %Us
    System time: %Ss
    Percent of CPU this job got: %P
    Voluntary context switches: %W
    Involuntary context switches: %c
    Major (requiring I/O) page faults: %F
    Minor (reclaiming a frame) page faults: %R
    Page size (bytes): %Z" \
    ./pca-seq -r 1024 -c 4096 -s 256 \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking 2048x8192---\n\e[0m" \
    && \
    /usr/bin/time -f \
    "Command that was run: %C
    Elapsed (wall clock) time (m:ss): %Es
    User time: %Us
    System time: %Ss
    Percent of CPU this job got: %P
    Voluntary context switches: %W
    Involuntary context switches: %c
    Major (requiring I/O) page faults: %F
    Minor (reclaiming a frame) page faults: %R
    Page size (bytes): %Z" \
    ./pca-seq -r 2048 -c 8192 -s 256 \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking 4096x16384---\n\e[0m" \
    && \
    /usr/bin/time -f \
    "Command that was run: %C
    Elapsed (wall clock) time (m:ss): %Es
    User time: %Us
    System time: %Ss
    Percent of CPU this job got: %P
    Voluntary context switches: %W
    Involuntary context switches: %c
    Major (requiring I/O) page faults: %F
    Minor (reclaiming a frame) page faults: %R
    Page size (bytes): %Z" \
    ./pca-seq -r 4096 -c 16384 -s 256

else
    echo "You need to have TIME(1) in /usr/bin/time"
fi