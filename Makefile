readme.md: guessinggame.sh

	echo "GUESSING GAME " > README.md
	date >> README.md
	echo "The number of lines in the code are as follows:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

