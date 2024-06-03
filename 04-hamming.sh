#!/bin/bash

calculateHammingDistance() {
  input1=$1
  input2=$2

  if [ ${#input1} -ne ${#input2} ]; then
    echo "Lengths must be equal"
    exit 1
  fi

  hammingDistance=0

  for ((i = 0; i < ${#input1}; i++)); do
    if [ "${input1:$i:1}" != "${input2:$i:1}" ]; then
      ((hammingDistance++))
    fi
  done

  echo $hammingDistance
}

calculateHammingDistance "GAGCCTACTAACGGGAT" "CATCGTAATGACGGCCT"
