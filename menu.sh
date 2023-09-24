#!/bin/bash
echo "Welcome the your personal record system, type: "
echo -e "1. to add a record \n2. to edit a record \n3. search for specific records \n4. to generate reports "

read prompt_number

user_prompt=$prompt_number

if [ $user_prompt -eq 1  ]; then

	#echo "This is the $(pwd)"
	# cd "/home/$whoami/scripts/"
	cd ./notes/ 

	echo "enter filename: "
	read filename

	touch $filename
	echo "enter text for your file"
	pwd
elif [ $user_prompt -eq 2 ]; then
	echo "enter filename: "
	read filename
	nano $filename
elif [ $user_prompt -eq 3 ]; then
	echo "enter filename to be searched for"
	read filename
	found_file=$(find "$(pwd)" -type f -name "$filename")
	
	if [ -n "$found_file" ]; then
		echo "File $filename found at: $found_file "
	else
		echo "File $filename not found at: $found_file"
elif [ $user_prompt -eq 4 ]; then
	num_files=$(find "$(pwd)" -type f | wc -l)
	num_dir=$(find "$(pwd)" -type d | wc -l) 
	echo "You have $num_files files and $num_dir present in this directory "
fi
