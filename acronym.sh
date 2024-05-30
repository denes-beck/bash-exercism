#!/bin/bash

generateAcronym() {
  input=$1
  str=$(echo $input | tr -s '-' '[:space:]' | tr '[:lower:]' '[:upper:]')
  acronym=""

  for word in ${str[@]}; do
    acronym+=${word:0:1}
  done

  echo $acronym
}

generateAcronym "GNU-image manipulation Program"
