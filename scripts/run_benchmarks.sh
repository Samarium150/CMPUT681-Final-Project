#!/usr/bin/env bash

set -e

cp .bazelrc WORKSPACE ../highway/
cp algo-inl.h bench_sort.cc bench_parallel.cc BUILD ../highway/hwy/contrib/sort/

cd ../highway
bazel build -c opt //hwy/contrib/sort:all
echo "Run benchmarks..."
bazel-bin/hwy/contrib/sort/bench_sort >> bench_sort.txt
bazel-bin/hwy/contrib/sort/bench_parallel >> bench_parallel.txt
mv bench_sort.txt bench_parallel.txt ../scripts/results/
git reset --hard
git clean -fd
echo "Done!"
