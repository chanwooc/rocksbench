#/usr/bin/env bash

# size constants
K=1024
M=$((1024 * K))
G=$((1024 * M))

MB_WRITE_PER_SEC=700 \
DB_DIR=db \
WAL_DIR=wal \
OUTPUT_DIR=output \
KEY_SIZE=12 \
VALUE_SIZE=8180 \
NUM_KEYS=$((32*M)) \
COMPRESSION_TYPE=none \
CACHE_SIZE=$((4 * G)) \
NUM_THREADS=24 \
BLOCK_SIZE=8192 \
BLOOM_BITS=10 \
./benchmark.sh bulkload

#./benchmark.sh readrandom
#NUM_THREADS=12 \
#./benchmark.sh filluniquerandom
#./benchmark.sh fillseq_disable_wal
#CACHE_SIZE=$((4 * G)) 
#NUM_THREADS=24 \
#NUM_READS=$((1*M)) \
