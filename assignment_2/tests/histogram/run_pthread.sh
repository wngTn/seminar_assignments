#!/bin/bash
if [ -e /usr/bin/time ]
then
    printf "\e[92m---Starting benchmarking ~100MB Image---\n\e[0m" \
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
    ./histogram-pthread histogram_datafiles/small.bmp \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking ~400MB Image---\n\e[0m" \
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
    ./histogram-pthread histogram_datafiles/med.bmp \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking ~1.4GB Image---\n\e[0m" \
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
    ./histogram-pthread histogram_datafiles/large.bmp

else
    echo "You need to have TIME(1) in /usr/bin/time"
fi