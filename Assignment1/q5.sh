#!/bin/bash

read inpstr

echo q5a
echo $inpstr | rev
echo

echo q5b

strlen=${#inpstr}
for ((i=$strlen-1;i>=0;i--))
do
	revChar=$(echo ${inpstr:$i:1} | tr "0-9a-zA-Z" "1-9a-zA-ZA")
	back=$back$revChar
done
echo $back
echo

echo q5c
half=$((strlen/2))
for ((i=$half;i>0;i--))
do
	charev=$(echo ${inpstr:$i-1:1})
	reve=$reve$charev
done
rest="${inpstr:$half:$strlen}"
ans="$reve$rest"
echo $ans