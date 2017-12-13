#/usr/bin/env bash

# size constants
Ki=1024
Mi=$((1024 * Ki))
Gi=$((1024 * Mi))

K=1000
M=1000000
G=1000000000

TH=24

#NUM_WRITES=$((50*M)) \
#READ_PERCENT=80 \
#MB_WRITE_PER_SEC=800 \
#NUM_READS=$((100*M/TH)) \
STATS_INTERVAL=$((1000000/TH)) \
NUM_READS=$((50*M/TH)) \
NUM_KEYS=$((32*Mi)) \
DB_DIR=db \
WAL_DIR=wal \
OUTPUT_DIR=output \
KEY_SIZE=32 \
VALUE_SIZE=8160 \
COMPRESSION_TYPE=none \
CACHE_SIZE=$((4*Gi)) \
NUM_THREADS=$((TH)) \
BLOCK_SIZE=8192 \
./benchmark.sh readrandom


#./benchmark.sh readrandom
#./benchmark.sh readrandomwriterandom
#NUM_THREADS=12 \
#BLOCK_SIZE=65536 \
#./benchmark.sh filluniquerandom
#NUM_READS=$((400*K)) \
#CACHE_SIZE=$((4 * G)) 
#NUM_THREADS=24 \
#NUM_READS=$((1*M)) \


