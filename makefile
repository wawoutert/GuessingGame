README.md:
	echo "# Guessing Game" > README.md
	echo "This file was created on: $(shell date)" >> README.md
	echo "The guessing game program consists of $(shell cat guessinggame.sh | wc -l) lines" >> README.md
