#!/bin/bash
# File: guessinggame.sh

get_file_count() {
	ls -1 | wc -l
}

guessing_game() {
	correct_number=$(get_file_count)
	guess=0
	
	while [[ $guess -ne $correct_number ]]; do
		echo "How many files in the current directory? Please guess:"
		read guess

		if [[ $guess -lt $correct_number ]]; then
		    echo "Your guess is too low, Try again!"
		elif [[ $guess -gt $correct_number ]]; then
		    echo "Your guess is too high. Try again!"
		fi
	done

	echo "Congratulations! Your guess is correct number of files: $correct_number"
}

guessing_game





