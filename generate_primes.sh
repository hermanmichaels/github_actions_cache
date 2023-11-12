#!/bin/bash

N=10  # Number of prime numbers to generate
file_path="prime-numbers/primes.txt" # Path where to store the primes

# Remove existing file if it exists
rm -f "$file_path"

# Function to check if a number is prime
is_prime() {
    num=$1
    for ((i=2; i*i<=num; i++)); do
        if ((num % i == 0)); then
            return 1
        fi
    done
    return 0
}

# Create directory for prime numbers if it doesn't exist
mkdir -p "$(dirname "$file_path")"

echo "Generating prime numbers ..."

count=0
number=2
while [ $count -lt $N ]; do
    if is_prime $number; then
        echo $number >> prime-numbers/primes.txt
        ((count++))
    fi
    ((number++))
done
