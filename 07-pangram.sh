#!/bin/bash

checkIfPangram() {
  if [[ ${#1} < 26 ]]; then
    echo "This can't be a pangram!"
    return 1
  fi

  input=${1,,}

  alphabet=$(echo $input | grep -o . | sort | tr -d "\n" | sed 's/[^a-z]*//g' | tr -s 'a-z')
  if [[ ${#alphabet} == 26 ]]; then
    echo "This is a pangram ==> $1"
    return 0
  else
    echo "This is not a pangram ==> $1"
    return 0
  fi
}

checkIfPangram "The quick brown fox jumps over the lazy dog"
checkIfPangram "Hello World"
checkIfPangram "abcdefghijklmnopqrstuvwxyz"
