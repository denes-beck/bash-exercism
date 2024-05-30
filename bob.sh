#!/bin/bash

getAnswer() {
  input=$1

  if [[ $input =~ ^[\ ]*$ ]]; then
    echo "Fine. Be that way!"

  elif [[ $input =~ ^[A-Z\ \']+\!?$ ]]; then
    echo "Whoa, chill out!"

  elif [[ $input =~ ^[A-Z\ \']+\?$ ]]; then
    echo "Calm down, I know what I'm doing!"

  elif [[ $input =~ ^.+\?$ ]]; then
    echo "Sure."

  else
    echo "Whatever."
  fi
}

getAnswer "Are you ok?"
getAnswer "YOU'RE AN IDIOT!"
getAnswer "ARE YOU AN IDIOT?"
getAnswer "   "
getAnswer "Whatever."
