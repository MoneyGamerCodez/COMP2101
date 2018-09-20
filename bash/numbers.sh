#!/bin/bash
#this is a demo of arithmentics

read -p "Give me 2 numbers: " firstnum secondnum
echo "$firstnum plus $secondnum is $(($firstnum + $secondnum))"
echo "$firstnum minus $secondnum is $(($firstnum - $secondnum))"
echo "$firstnum times $secondnum is $(($firstnum * $secondnum))"
echo "$firstnum divided $secondnum is $(($firstnum / $secondnum))"
echo It is also $(awk "Begin{print \"%.2f\",$firstnum/$secondnum}")
echo "The remainder when dividing $firstnum by $secondnum is $((firstnum % secondnum))"
echo "$firstnum to the power of $secondnum is $(bc <<< "$firstnum ^ $secondnum")"
