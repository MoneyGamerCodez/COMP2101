#!/bin/bash

#this script will display all the command line arguments
#it will also display how many things on the command line

##########################
# VARIABLES
#default value for debug 0
declare -i debug
debug=0
##########################


function displayHelp {
  echo "usage: $(basename $0) [-h|--help] [-d|--debug N]"
}
#this can be used for degugging
#echo "there are $# things on the command line"

while [ $# -gt 0 ]; do
#work on $1
echo "Found $1 on the command line"
case "$1" in
  -h|--help)
  #found help option
  displayHelp
  ;;
  -d|--debug)
  #found the debug option
  debug="$2" # TODO: should validate debug number
  shift
  ;;
  *)
  #bad arguments
  echo "I didn't recongnize '$1'" >&2
  echo "usage: $(basename $0) [-h|--help] [-d|--debug N]"
  exit 1
  ;;
esac
shift
#this can be used for degugging
#echo "there are $# things left on the command line"
done

echo "Finished processing the command line"
echo "debug variable is set to '$debug'"
