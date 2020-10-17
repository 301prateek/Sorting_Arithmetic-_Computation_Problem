#!/bin/bash -x
#Author: Prateek Patil
#Program to Sort Arithmetic Computations

#Welcome message
echo "Welcome to Sorting Arithmetic Computations"

#Taking three inputs from the user.
read -p "Enter 1st number: " a
read -p "Enter 2nd number: " b
read -p "Enter 3rd number: " c

#Calculations

calc1=$(( a + b * c ))

calc2=$(( a * b + c ))

calc3=`awk "BEGIN{print $c + $a/$b}"`

calc4=$(( a % b + c ))

#Declaring dictionary and storing each result.

declare -A calculation
calculation[0]=$calc1
calculation[1]=$calc2
calculation[2]=$calc3
calculation[3]=$calc4

echo ${calculation[@]}

#Storing the values from dictionary into array.
result=()

for(( i=0; i<${#calculation[@]}; i++ ))
do
	result[$i]=${calculation[$i]}
done

echo "Array: " ${result[@]}
