# Setup



# Execution

## **Phoenix**
The implementation of Phoenix as well as the input files have been directly taken from https://github.com/kozyraki/phoenix!!

### **Run Phoenix**
To succesfully run the Phoenix benchmarks you need to download the input files I have used.

You can get them here:
- [Histogram Files](http://home.in.tum.de/~wangt/seminar/data/histogram.tar.gz) ~500MB
- [Linear Regression Files](http://home.in.tum.de/~wangt/seminar/data/linear_regression.tar.gz) ~200MB
- [String Matchin Files](http://home.in.tum.de/~wangt/seminar/data/string_match.tar.gz) ~200MB
- [Word Count Files](http://home.in.tum.de/~wangt/seminar/data/word_count.tar.gz) ~50MB

Extract them with tar: 
``` bash
$ tar -zxvf *.tar.gz
```
And move them into the respective subdirectory:
``` bash
$ mv histogram_datafiles tests/histogram/
$ mv linear_regression_datafiles tests/linear_regression/
$ mv string_match_datafiles tests/string_match/
$ mv word_count_datafiles tests/word_count/
```


Before you can execute something, you need to compile everything:
``` bash
$ cd tests
$ make
```

Now you can change into the different subdirectories and execute the benchmarks:
``` bash
$ cd word_count
```
If you don't have the input files in the subdirectory you have to copy them in the subdirectories, or execute:



## **Parsec**
<details>
<summary><font size = "+1"><b>Installing Parsec</b></font size></summary>

  Download PARSEC 3.0
``` bash
$ wget http://parsec.cs.princeton.edu/download/3.0/parsec-3.0.tar.gz
```

Unpack PARSEC 3.0 package
``` bash
$ tar -xzf parsec-3.0.tar.gz
$ cd parsec-3.0
```

Setup environment variable (requires bash)
``` bash
$ bash && source env.sh
```

Building workloads can be done with:  
`parsecmgmt -a build -p [suite].[PACKAGE] -c [BUILD-CONFIGURATION]`  

In this assignment we use seven different workloads with both serial and parallel version:
1. Blackscholes
2. Canneal
3. Fluidanimate
4. Freqmine
5. Raytrace
6. Streamcluster 
7. Vips

To build all these workloads, simply run the following commands:
``` bash
$ parsecmgmt -a build -p parsec.blackscholes -c gcc # builds default parallel version of blackscholes workload with gcc
$ parsecmgmt -a build -p parsec.blackscholes -c gcc-serial # builds the serial version with gcc
$ parsecmgmt -a build -p parsec.canneal -c gcc # builds default parallel version of canneal workload with gcc
$ parsecmgmt -a build -p parsec.canneal -c gcc-serial # builds the serial version with gcc
$ parsecmgmt -a build -p parsec.fluidanimate -c gcc
$ parsecmgmt -a build -p parsec.fluidanimate -c gcc-serial
$ parsecmgmt -a build -p parsec.freqmine -c gcc
$ parsecmgmt -a build -p parsec.freqmine -c gcc-serial
$ parsecmgmt -a build -p parsec.raytrace -c gcc
$ parsecmgmt -a build -p parsec.raytrace -c gcc-serial
$ parsecmgmt -a build -p parsec.streamcluster -c gcc
$ parsecmgmt -a build -p parsec.streamcluster -c gcc-serial
$ parsecmgmt -a build -p parsec.vips -c gcc
$ parsecmgmt -a build -p parsec.vips -c gcc-serial
```

Great! Now we have installed everything we need.
</details>



### **Run Parsec**

After installing everything properly, we can run the benchmarks very handy from the commandline. 

The commandline arguments are: `parsecmgmt -a run -p [suite].[PACKAGE] -c [BUILD-CONFIGURATION] -i [INPUT-SIZE] -n [THREAD#]`

To recreate the benchmarks in this assignment, use the following commands:

Example for the `blackscholes` workload:
``` bash
$ parsecmgmt -a run -p parsec.blackscholes -c gcc-serial -i simsmall # run the serial version with a small workload
$ parsecmgmt -a run -p parsec.blackscholes -c gcc-serial -i simlarge # run the serial version with a large workload
$ parsecmgmt -a run -p parsec.blackscholes -c gcc -i simsmall -n 4
# run the parallel version of blackscholes prorgram with a small workload and 4 threads
$ parsecmgmt -a run -p parsec.blackscholes -c gcc -i simlarge -n 4
# run the parallel version of blackscholes prorgram with a large workload and 4 threads
$ parsecmgmt -a run -p parsec.blackscholes -c gcc -i simsmall -n 8
# run the parallel version of blackscholes prorgram with a small workload and 8 threads
$ parsecmgmt -a run -p parsec.blackscholes -c gcc -i simlarge -n 8
# run the parallel version of blackscholes prorgram with a large workload and 8 threads
```

These commands can be run analogoulsy for the other packages: `canneal, fluidanimate, freqmine, raytrace, streamcluster, vips`.

# Plots
# Description

## Parsec

### **Workloads Overview**

| Workload        | Application Domain | Parallelization-Model | Parallelization-Granularity | Working Set | Data Usage Sharing | Data Usage Exchange |
| --------------- | ------------------ | --------------------- | --------------------------- | ----------- | ------------------ | ------------------- |
| `blackscholes`  | Financial Analysis | data-parallel         | coarse                      | small       | low                | low                 |
| `canneal`       | Computer Vision    | unstructured          | fine                        | unbounded   | high               | high                |
| `fluidanimate`  | Animation          | data-parallel         | fine                        | large       | low                | medium              |
| `freqmine`      | Data Mining        | data-parallel         | medium                      | unbounded   | high               | medium              |
| `raytrace`      | Rendering          | data-parallel         | medium                      | unbounded   | high               | low                 |
| `streamcluster` | Data Mining        | data-parallel         | medium                      | medium      | low                | medium              |
| `vips`          | Media Processing   | data-parallel         | coarse                      | medium      | low                | medium              |

**Table 1** Key Characteristics of the different workloads used in this assignment taken from *Benchmarking Modern Multiprocessors, Christian Bienia, Ph.D. Thesis, 2011*

