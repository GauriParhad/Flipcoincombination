#!/bin/bash -x

for ((i=1; i<=50; i++))
do
        randomcheck1=$((RANDOM%2))
        randomcheck2=$((RANDOM%2))

        if (( $randomcheck1 == 0 && $randomcheck2 == 0 ))
        then
                echo "H H"
                ((Doublet[HH]++))
        elif (( $randomcheck1 == 0 && $randomcheck2 == 1 ))
        then
                echo "H T"
                ((Doublet[HT]++))
        elif (( $randomcheck1 == 1 && $randomcheck2 == 0 ))
        then
                echo "T H"
                ((Doublet[TH]++))

        else
                echo "T T"
                ((Doublet[TT]++))
        fi
done
