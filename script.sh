#/usr/bin/env bash

# size constants
K=1024
M=$((1024 * K))
G=$((1024 * M))

MB_WRITE_PER_SEC=800 \
DB_DIR=db \
WAL_DIR=wal \
OUTPUT_DIR=output \
KEY_SIZE=32 \
VALUE_SIZE=8160 \
NUM_KEYS=$((32*M)) \
NUM_READS=$((500*K)) \
COMPRESSION_TYPE=none \
CACHE_SIZE=$((4 * G)) \
NUM_THREADS=24 \
BLOCK_SIZE=8192 \
./benchmark.sh readrandom

#./benchmark.sh readrandom
#NUM_THREADS=12 \
#BLOCK_SIZE=65536 \
#./benchmark.sh filluniquerandom
#./benchmark.sh fillseq_disable_wal
#NUM_READS=$((400*K)) \
#CACHE_SIZE=$((4 * G)) 
#NUM_THREADS=24 \
#NUM_READS=$((1*M)) \
