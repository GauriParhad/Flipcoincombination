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


echo ${!Singlet[@]}
echo ${Singlet[@]}

H=`awk "BEGIN {print (${Singlet[HH]}/50)*100}"`
echo "H = $H%"
T=`awk "BEGIN {print (${Singlet[T]}/50)*100}"`
echo "T = $T%"

HH=`awk "BEGIN {print (${Singlet[HH]}/50)*100}"`
echo "HH = $HH%"
HT=`awk "BEGIN {print (${Singlet[HT]}/50)*100}"`
echo "HT = $HT%"
TH=`awk "BEGIN {print (${Singlet[TH]}/50)*100}"`
echo "TH = $TH%"
TT=`awk "BEGIN {print (${Singlet[TT]}/50)*100}"`
echo "TT = $TT%"

HHH=`awk "BEGIN {print (${Singlet[HHH]}/50)*100}"`
echo "HHH = $HHH%"
HHT=`awk "BEGIN {print (${Singlet[HHT]}/50)*100}"`
echo "HHT = $HHT%"
HTH=`awk "BEGIN {print (${Singlet[HTH]}/50)*100}"`
echo "HTH = $HTH%"
THH=`awk "BEGIN {print (${Singlet[THH]}/50)*100}"`
echo "THH = $THH%"
HTT=`awk "BEGIN {print (${Singlet[HTT]}/50)*100}"`
echo "HTT = $HTT%"
THT=`awk "BEGIN {print (${Singlet[THT]}/50)*100}"`
echo "THT = $THT%"
TTH=`awk "BEGIN {print (${Singlet[TTH]}/50)*100}"`
echo "TTH = $TTH%"
TTT=`awk "BEGIN {print (${Singlet[TTT]}/50)*100}"`
echo "TTT = $TTT%"
