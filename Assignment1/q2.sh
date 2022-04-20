#!/bin/bash

# sed /\s~\w(.)+$/gmd quotes1.txt // Is supposed to delete all author parts
# Learn more at regexr
# Possibility = read, grep, wc, awk, sed

# while IFS= read -r line; do
#		echo "Text read from line : $line"
# done < quotes.txt

# Other ways that do not work, but might be useful later.

awk -F~ '!/./ {next} { print $2,"once said","\"", $1, "\"" }' quotes.txt > speech.txt