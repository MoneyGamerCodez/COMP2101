#!/bin/bash
#these are variables
pcname=$(hostname) #poor choice of variable name, the system already has a name called hostname
myName="Thomas"
today=$(date +%A)
titles=("Doctor" "Commander" "General" "Emperor")
title_index=$((RANDOM % ${#titles[@]}))
mytitle=${titles[$title_index]}
#you can use the variables anywhere, whetherin the string or out
welcome_message="
Welcome to planet $pcname! \n Greetings $mytitle $myName,
today's date is $today.
"

echo $welcome_message |cowsay -f cock
