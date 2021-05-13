#!/bin/bash
if [ -e /usr/bin/time ]
then
    printf "\e[92m---Starting benchmarking d: 4096, c: 2048. p: 2048---\n\e[0m" \
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
    ./kmeans-seq -d 4096 -c 2048 -p 2048 -s 256 \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking d: 4096, c: 4096, p: 2048---\n\e[0m" \
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
    ./kmeans-seq -d 4096 -c 4096 -p 2048 -s 256 \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking d: 4096, c: 4096, p: 4096---\n\e[0m" \
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
    ./kmeans-seq -d 4096 -c 4096 -p 4096 -s 256

else
    echo "You need to have TIME(1) in /usr/bin/time"
fi