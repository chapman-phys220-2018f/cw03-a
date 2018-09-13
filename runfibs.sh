#!/bin/bash
if [ -e fibs.csv.bak ]; then
	echo backup already exists
    exit 1
fi
if [ -e fibs.csv ]; then
    mv fibs.csv fibs.csv.bak
fi
for i in $(seq 10000); do
   ./fib.py $i >> fibs.csv
done
