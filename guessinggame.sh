#!/usr/bin/env bash

# First you will create a program called guessinggame.sh. 

# This program will continuously ask the user 
# to guess the number of files in the current directory, 
# until they guess the correct number. 
# The user will be informed 
#if their guess is too high or too low. 
# Once the user guesses 
# the correct number of files in the current directory 
# they should be congratulated.


# Setup
# get the number of files in current directory
# using a function
function get_number_files {
  number_files=`ls | wc -l`
}

get_number_files
stop_flag=0

# Loop 
while [[ $stop_flag -eq 0 ]]
# Prompt
do
  echo "Guess how many files are in the current directory?";
  read guess;
  if [[ $guess -lt $number_files ]]  
  then
    echo "No - that's too low"
  elif [[ $guess -gt $number_files ]]  
  then
    echo "No - that's too high"
  else
    echo "That is correct!";
    stop_flag=1
  fi
done;

echo "End program"
