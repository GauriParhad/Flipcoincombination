#!/bin/bash -x
for ((i=1; i<=50; i++))
do
        randomcheck1=$((RANDOM%2))
        randomcheck2=$((RANDOM%2))
        randomcheck3=$((RANDOM%2))

        if (( $randomcheck1 == 0 && $randomcheck2 == 0 && $randomcheck3 == 0 ))
        then
                echo "H H H"
                ((Triplet[HHH]++))
        elif (( $randomcheck1 == 0 && $randomcheck2 == 0 && $randomcheck3 == 1 ))
        then
                echo "H H T"
                ((Triplet[HHT]++))
        elif (( $randomcheck1 == 0 && $randomcheck2 == 1 && $randomcheck3 == 0 ))
        then
                echo "H T H"
                ((Triplet[HTH]++))
        elif (( $randomcheck1 == 1 && $randomcheck2 == 0 && $randomcheck3 == 0 ))
        then
                echo "T H H"
                ((Triplet[THH]++))
        elif (( $randomcheck1 == 0 && $randomcheck2 == 1 && $randomcheck3 == 1 ))
        then
                echo "H T T"
                ((Triplet[HTT]++)) 
        elif (( $randomcheck1 == 1 && $randomcheck2 == 0 && $randomcheck3 == 1 ))
        then
                echo "T H T"
                ((Triplet[THT]++))
        elif (( $randomcheck1 == 1 && $randomcheck2 == 1 && $randomcheck3 == 0 ))
        then
                echo "T T H"
                ((Triplet[TTH]++))
        else
                echo "T T T"
                ((Triplet[TTT]++))
        fi
done
