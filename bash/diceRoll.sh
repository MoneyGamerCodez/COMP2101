#!/bin/bash

#####################################
# VARIABLES
sides=$1
count=$2

######################################

######################################
# FUNCTIONS
# the function below will display a help message

function displayHelp {
  echo "usage: $(basename $0) [-h|--help] [-c|--count] [-s|--sides]"
}
#######################################

sum=0
while [ $count -gt 0 ]; do
  case "$1" in
    -h|--help)
    #found help option
    displayHelp
    ;;
    -c|--count)

    ;;
    -s|--sides)

    ;;

  esac

    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$((count - 1))
done
echo "You rolled a total of $sum"
