#!/bin/bash

read inputfile

#a
no=$(wc -c $inputfile | awk '{print $1}')
echo "$no bytes"

#b
no=$(wc -l $inputfile | awk '{print $1}')
echo "$no lines"

#c
no=$(wc -w $inputfile | awk '{print $1}')
echo "$no words"
echo

#d
awk '{print "Line No :", NR, "- Count of words :", NF}' < $inputfile
echo

# This one doesn't work
#e
sort $inputfile | uniq -c | sort -nr | while read wordnum word
do
	echo "${word} : ${wordnum}"
done
# NR = number of records(line number)
# NF = number of fields