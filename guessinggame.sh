#!/usr/bin/env bash
function get_file_count {
    ls -1 | wc -l
}

file_count=$(get_file_count)
guess=-1

echo "How many files are in the current directory?"

while [[ $guess -ne $file_count ]]
do
    read -p "Enter your guess: " guess

    if [[ $guess -lt $file_count ]]
    then
        echo "Your guess is too low. Try again."
    elif [[ $guess -gt $file_count ]]
    then
        echo "Your guess is too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files ($file_count)."
    fi
done
