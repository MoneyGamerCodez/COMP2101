#!/bin/bash

###########################################
#					  #
# Creating the arrays that will store 	  #
# the color with the corrisponding animal #
#					  #
###########################################

declare -A animals
animals=(["red"]="cardinal" ["green"]="turtle" ["blue"]="whale" ["white"]="chicken" ["yellow"]="duckiraffe")

#####################################################################
# Ask the user to pick a number between 1 and the number of colours #
# present in the Array						    #
#####################################################################

read -p "Give me a number from 1-${#colours[@]}: " number

#########################################################
# The next line/function will read out the users number #
# along with the colour and creature 			#
#########################################################

echo "You picked $number, which is the $colour $animal"

