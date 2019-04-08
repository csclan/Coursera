#!/bin/bash
# list and get the number of files within a directory 
num=$(ls -p | grep -v / | wc -l)

# start the counter for the while statement
counter=$1

while [ 1 ]
do

# ask for the input (the guessed number)
echo "Enter the number of files in this directory:"

read guess

# if loop: 1 guess too few; 2 guess too many; 3 guess correctly
if
 [ $guess -lt $num ]
then
 echo "More..Try again!"
elif
 [ $guess -gt $num ]
then
 echo "Less..Try again!"
else
 echo "Congrats! You have guessed the correct number of files within the directory."
 break
fi
done
