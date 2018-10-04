#!/bin/bash
#these are variables
pcname=$(hostname) #poor choice of variable name, the system already has a name called hostname
myName="Thomas"
today=$(date +%A)
#you can use the variables anywhere, whetherin the string or out
echo -e "Welcome to planet $pcname! \n Greetings Doctor $myName, today's date is $today." | cowsay -f dragon
