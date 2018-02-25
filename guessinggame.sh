#! /bin/bash
function guessing_game {
	echo "Guess the number of files in this folder"
	num_files=$(ls -a | wc -l)
	let bool=1 

	while [[ $bool -eq 1 ]] #While loop
	do
		read ans
		if [[ $ans -eq $num_files ]] # If statement
		then
			let bool=0
			echo "Congratulations : Your answer is correct"
		elif [[ $ans -le $num_files ]]
		then
			echo "Prediction lower than answer"
		else
			echo "Prediction higher than answer"
		fi
	done
}
guessing_game #function definition
exit
