#!/bin/bash

echo "=== Running mypy ==="
mypy caesar.py

if [ $? -ne 0 ]; then
    echo "mypy check failed."
    exit 1
fi

echo "=== Running pylint ==="
pylint caesar.py

if [ $? -ne 0 ]; then
    echo "pylint check failed."
    exit 1
fi

echo "=== All static analysis checks passed ==="
