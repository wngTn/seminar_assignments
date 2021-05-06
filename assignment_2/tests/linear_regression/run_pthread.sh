#!/bin/bash
if [ -e /usr/bin/time ]
then
    printf "\e[92m---Starting benchmarking 50MB---\n\e[0m" \
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
    ./linear_regression-pthread linear_regression_datafiles/key_file_50MB.txt \
    && \
    printf "\n" \
    && \
    printf "\e[92m---Starting benchmarking 100MB---\n\e[0m" \
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
    ./linear_regression-pthread linear_regression_datafiles/key_file_100MB.txt  \
    && \
    printf "\n" \
    &&
    printf "\e[92m---Starting benchmarking 500MB---\n\e[0m" \
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
    ./linear_regression-pthread linear_regression_datafiles/key_file_500MB.txt

else
    echo "You need to have TIME(1) in /usr/bin/time"
fi