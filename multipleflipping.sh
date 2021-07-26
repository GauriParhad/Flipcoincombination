#!/bin/bash -x

Head=0
declare -A Singlet

for ((i=1; i<=50; i++))
do
        randomcheck=$((RANDOM % 2))
      
        if (( $randomcheck == 0 ))
        then
                echo "H"
                ((Singlet[H]++))
        else
                echo "T"
                ((Singlet[T]++))
        fi
done
