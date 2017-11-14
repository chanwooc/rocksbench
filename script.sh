#/usr/bin/env bash

# size constants
K=1024
M=$((1024 * K))
G=$((1024 * M))

MB_WRITE_PER_SEC=700 \
DB_DIR=db \
WAL_DIR=wal \
OUTPUT_DIR=output \
KEY_SIZE=20 \
VALUE_SIZE=8000 \
NUM_KEYS=$((32*M)) \
NUM_READS=$((512*K)) \
COMPRESSION_TYPE=none \
CACHE_SIZE=$((4 * G)) \
NUM_THREADS=24 \
BLOCK_SIZE=8192 \
./benchmark.sh readrandom_direct

#./benchmark.sh readrandom
#NUM_THREADS=12 \
#./benchmark.sh filluniquerandom
#./benchmark.sh fillseq_disable_wal
#CACHE_SIZE=$((4 * G)) 
#NUM_THREADS=24 \
#NUM_READS=$((1*M)) \
