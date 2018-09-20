#!/bin/bash
#these are variables
hostname=$(hostname) #poor choice of variable name, the system already has a name called hostname
myName="Thomas"
today=$(date +%A)
#you can use the variables anywhere, whetherin the string or out
echo "Welcome to planet $hostname"
echo "greetings Doctor $myName, today's date is $today."
