#/usr/bin/env bash

# size constants
Ki=1024
Mi=$((1024 * Ki))
Gi=$((1024 * Mi))

K=1000
M=1000000
G=1000000000

STATS_INTERVAL=41667 \
READ_PERCENT=80 \
NUM_READS=$((100*M/24)) \
NUM_KEYS=$((32*Mi)) \
NUM_WRITES=$((50*M)) \
MB_WRITE_PER_SEC=800 \
DB_DIR=db \
WAL_DIR=wal \
OUTPUT_DIR=output \
KEY_SIZE=32 \
VALUE_SIZE=8160 \
COMPRESSION_TYPE=none \
CACHE_SIZE=$((4*Gi)) \
NUM_THREADS=24 \
BLOCK_SIZE=8192 \
./benchmark.sh readrandom


#./benchmark.sh readrandom
#./benchmark.sh readrandomwriterandom
#NUM_THREADS=12 \
#BLOCK_SIZE=65536 \
#./benchmark.sh filluniquerandom
#./benchmark.sh fillseq_disable_wal
#NUM_READS=$((400*K)) \
#CACHE_SIZE=$((4 * G)) 
#NUM_THREADS=24 \
#NUM_READS=$((1*M)) \


