#!/bin/bash

if [[ $(($1 % 3)) == 0 ]]; then
  echo "Pling"
elif [[ $(($1 % 5)) == 0 ]]; then
  echo "Plang"
elif [[ $(($1 % 7)) == 0 ]]; then
  echo "Plong"
else
  echo "$1"
fi
