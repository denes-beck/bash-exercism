#!/bin/bash

echo "Running process $$..."
echo "Arguments @: $@"
echo "Arguments *: $*"

IFS='|'

if [[ $# -gt 2 ]]; then
  echo "Too many arguments."
  # exit 1
fi

echo "$@"
echo "$*"

echo "For @"
for e in "$@"; do
  echo $e
done

echo "For *"
for e in "$*"; do
  echo $e
done

array=("1" "2" "3")

echo "${array[@]}"
echo "${array[*]}"
