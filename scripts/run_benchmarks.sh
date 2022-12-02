#!/usr/bin/env bash

set -e

cp .bazelrc WORKSPACE ../highway/
cp *.h *.cc BUILD ../highway/hwy/contrib/sort/

cd ../highway
bazel build -c opt //hwy/contrib/sort:all
echo "Run benchmarks..."
echo "Run sequential sorting..."
bazel-bin/hwy/contrib/sort/bench_sort > bench_sort.txt
for ((i=0; i<7; i++)); do
    echo "Run parallel sorting round ${i}..."
    bazel-bin/hwy/contrib/sort/bench_parallel > bench_parallel_${i}.txt
done
mv bench_sort.txt ../scripts/results/
mv bench_parallel*.txt ../scripts/results/parallel/
echo "Reset submodules..."
git reset --hard
git clean -fd
echo "Done!"
