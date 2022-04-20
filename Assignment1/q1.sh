#!/bin/bash

sed '/./!d' quotes.txt | awk '!unique[$0]++' #> quotes.txt
# sed '/./!d' quotes.txt