#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "One for you, one for me."
  exit 0
fi

CLIENT=$1
echo "One for $1, one for me."
