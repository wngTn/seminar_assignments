#!/bin/bash
if [ -e /usr/bin/time ]
then
    printf "\e[92m---Starting benchmarking 10MB---\n\e[0m" \
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
    ./word_count word_count_datafiles/word_10MB.txt 1 \
    && \
    printf "\n" \
    && \
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
    ./word_count word_count_datafiles/word_50MB.txt 1 \
    && \
    printf "\n" \
    &&
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
    ./word_count word_count_datafiles/word_100MB.txt 1

else
    echo "You need to have TIME(1) in /usr/bin/time"
fi