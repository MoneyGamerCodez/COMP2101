#!/bin/bash

file=/etc/resolv.conf;
if [ -e $file ]; then
  echo "$file exists"
else
  echo "$file does not exist"
fi

file2=/bin/ls; [ -x "$file2" ]
if [ -e $file2 ]; then
  echo "$file2 is executable"
else
  echo "$file2 does not execute"
fi

file3=/tmp; [ -d "$file3" ]
if [ -e $file3 ]; then
  echo "$file3 is exists"
else
  echo "$file3 does not exist"
fi

if [ -d /etc/hosts ]; then
  echo "is exists"
else
  echo "does not exist"
fi

if [ -e /etc/shadow ]; then
  echo " is executable by anyone"
else
  echo " can't be executed by anyone"
fi

if [ -w /etc/network/interfaces ]; then
  echo "Can be wriiten"
else
  echo "no it cant"
fi

if [ -S /bin/passwd ]; then
  echo "has an id"
else
  echo "it dont have id"
fi

if [ /etc/hosts -nt /etc/resolv.conf ]; then
  echo "yes one is newer then the other"
else
  echo "nope one is older then the other"
fi

if [ -h /bin/pidof ]; then
  echo "Symbolic link"
else
  echo "not a link"
fi
