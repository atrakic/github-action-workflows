#!/bin/sh -l

# chmod +x

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
