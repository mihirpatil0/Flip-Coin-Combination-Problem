#!/bin/bash

echo -e "Welcome to Flip Coin Simulation\nThis problem displays winning percentage of Head or Tail\nCombination in a Singlet, Doublet and Triplet"
echo "--------------------------------------------"

declare -A Coin
read -p "Enter the number to flip a coin : " num

function Case()
{
	case $1 in
		11) echo "HH";;
		10) echo "HT";;
		01) echo "TH";;
		00) echo "TT";;
	esac
}


for (( i=1; i<=$num; i++ ))
do
	Random=$((RANDOM%2))$((RANDOM%2))
	((++Coin[`Case $Random`]))
done

for Key in ${!Coin[@]}
do
	Percntg=$(awk "BEGIN{print (${Coin[$Key]}/$num * 100 )}")
	echo "Percentage of winning $Key is $Percntg %"
done
