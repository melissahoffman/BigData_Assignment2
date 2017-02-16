#!/bin/bash
#Hello!!!

if [ $# -eq 0 ]; then
	echo "Usage: $0 filename"
	exit 1
fi

filename=$1

echo -n "The number of genes in $filename is "

cat $filename |
  grep -v '^#' |
  cut -f3 |
  grep gene |
  wc -l
# counts genes in the file
