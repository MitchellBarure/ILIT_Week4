#!/bin/bash

#prompt the user to enter a directory name
read -p "Enter directory name: " dirname

#Define file names 
file1="submission1.txt"
file2="submission2.txt"

#Check if the directory exists
if [[ -f "$dirname" ]]; then
	echo "file with $dirname exists, error cannot proceed"
	exit

#If the directory already exists
elif [[ -d "$dirname" ]]; then
	echo "Directory exits, creating files now"

#If directory does not exist
else
	echo "Directory does not exist, creating directory with the files now"
	#Create the directory
	mkdir "$dirname"
	echo "Directory has been made"
fi

#Creating the files inside the directory
touch "$dirname/$file1" "$dirname/$file2"
echo "Files $file1 and $file2 have been created"
