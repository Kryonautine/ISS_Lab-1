#!/bin/bash

numarg=$#
declare -a arr=("$@")


for ((i=0;i<$numarg;i++))
do
	for ((j=0;j<$numarg-$i-1;j++))
	do
		if ((${arr[$j]}>${arr[$j+1]}))
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$j+1]}
			arr[$j+1]=$temp
		fi
	done
done
echo ${arr[*]}