echo "How many files are in the current directory?"
read guess

answer=$(ls | wc -l)
echo "You guessed $guess"
echo "The answer was $answer"

if [[ $guess -eq $answer ]]
then
  echo "You are correct!"
else 
  echo "Please try again."
fi
