#!/bin/bash

countScrabbleScore() {
  input=$1
  count=0

  for ((i = 0; i < "${#input}"; i++)); do
    if [[ ${input:i:1} =~ [aeioulnrst] ]]; then
      echo "${input:i:1} = 1"
      count=$((count += 1))
    elif [[ ${input:i:1} =~ [dg] ]]; then
      echo "${input:i:1} = 2"
      count=$((count += 2))
    elif [[ ${input:i:1} =~ [bcmp] ]]; then
      echo "${input:i:1} = 3"
      count=$((count += 3))
    elif [[ ${input:i:1} =~ [fhvwy] ]]; then
      echo "${input:i:1} = 4"
      count=$((count += 4))
    elif [[ ${input:i:1} =~ [k] ]]; then
      echo "${input:i:1} = 5"
      count=$((count += 5))
    elif [[ ${input:i:1} =~ [jx] ]]; then
      echo "${input:i:1} = 8"
      count=$((count += 8))
    elif [[ ${input:i:1} =~ [qz] ]]; then
      echo "${input:i:1} = 10"
      count=$((count += 10))
    fi
  done
  echo $count
}

countScrabbleScore "cabbage"
