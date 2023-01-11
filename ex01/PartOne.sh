#!/bin/bash
# This is a comment
if [ -n "$2" ]
then
echo "Parametres more than 1. "
elif [ -n "$1" ]
then
	if [[ $1 =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then
		echo "Oops: $1 is a number. "
	else
		echo "$1"

	fi
else
echo "No parametres found. "
fi
