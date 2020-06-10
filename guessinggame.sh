terminate=0
answer=$(ls | wc -l)

while [[ $terminate -eq 0 ]]
do
  echo "How many files are in the current directory?"
  read guess
  echo "You guessed $guess"
#  echo "The answer was $answer"
  
  if [[ $guess -eq $answer ]]
  then
    echo "Congratulations, you are correct!"
    let terminate=1
  elif [[ $guess -gt $answer ]]
  then
    echo "Your answer is too high, please try again"
  else
    echo "Your answer is too low, please try again"
  fi
done
