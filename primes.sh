#!/bin/bash

# Read and print prime numbers from the file
if [ -f prime-numbers/primes.txt ]; then
    echo "Prime numbers:"
    cat prime-numbers/primes.txt
else
    echo "File prime-numbers/primes.txt not found."
fi
