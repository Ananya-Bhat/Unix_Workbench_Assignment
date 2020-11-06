function guessing {
	while true
	do
        	if [[ $number_of_files -gt $num_of_files ]]
		then
			echo "Ohh...Your guess is greater than the actual number!!"
			guess
		fi
		if [[ $number_of_files -lt $num_of_files ]]
		then
			echo "Ohh..your guess is lesser than the actual number!!"
			guess
		fi
		if [[ $number_of_files -eq $num_of_files ]]
		then
			break
		fi
	done
}

function guess {
	echo "Can you guess the number of files in the current directory??"
	read number_of_files
	num_of_files=$(ls -l|grep "^-"|wc -l)
	guessing
}

guess
echo "Congratulations!!Your guess is right!!"
