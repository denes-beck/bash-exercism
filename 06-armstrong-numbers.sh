#!/bin/bash

checkIfArmstrong() {
  input=$1

  sum=0
  for ((i = 0; i < ${#input}; i++)); do
    ((sum += ${input:i:1} ** ${#input}))
  done
  if [[ $sum -eq $input ]]; then
    echo "${input} is an Armstrong number!"
  else
    echo "${input} is NOT an Armstrong number!"
  fi
}

checkIfArmstrong 9
checkIfArmstrong 10
checkIfArmstrong 153
checkIfArmstrong 154
