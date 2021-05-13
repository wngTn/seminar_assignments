# Setup



# Execution

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
``` bash
$ parsecmgmt -a run -p parsec.blackscholes -c gcc-serial -i simsmall # run the serial version of blackscholes prorgram with a small workload
$ parsecmgmt -a run -p parsec.blackscholes -c gcc -i simsmall -n 4
# run the parallel version of blackscholes prorgram with a small workload 
```

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

