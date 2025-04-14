#!/bin/bash

# number of threads
for t in 1 2 4 8
do
    # number of trials
    for n in 100 1000 10000 50000 100000 500000 1000000
    do
        g++ proj1.cpp -DNUMT=$t -DNUMTRIALS=$n -o proj1 -lm -fopenmp
        ./proj1
    done
done
