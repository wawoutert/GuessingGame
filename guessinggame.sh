#!/usr/bin/env bash
# File: guessinggame.sh

function hint {
  if [[ $1 -gt $2 ]]
  then
    echo "Your guess is too high, please try again"
  else
    echo "Your guess is too low, please try again"
  fi
}

terminate=0
answer=$(ls | wc -l)

while [[ $terminate -eq 0 ]]
do
  echo "How many files are in the current directory?"
  read guess
  echo "You guessed $guess"
  if [[ $guess -eq $answer ]]
  then
    echo "Congratulations, you are correct!"
    let terminate=1
      else
    echo $(hint $guess $answer) #without echo, command is not found
  fi
done
