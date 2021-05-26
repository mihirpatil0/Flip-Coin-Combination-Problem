#!/bin/bash

echo -e "Welcome to Flip Coin Simulation\nThis problem displays winning percentage of Head or Tail\nCombination in a Singlet, Doublet and Triplet"
echo "--------------------------------------------"

Random=$((RANDOM%2))
if [ $Random -eq 1 ]
then
	echo "IT IS HEAD"
else
	echo "IT IS TAI	L"
fi
