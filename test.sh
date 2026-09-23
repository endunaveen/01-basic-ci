#!/bin/bash

output=$(./app.sh)

echo "$output" | grep -q "Build successful"

if [ $? -eq 0 ]; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED"
    exit 1
fi
