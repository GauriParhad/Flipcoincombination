#!/bin/bash -x
randomcheck=$((RANDOM%2))
if (($randomcheck == 0))
then 
	echo "HEADS"
else 
	echo "TAILS"
fi

