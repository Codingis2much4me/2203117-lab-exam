#!/bin/bash
s=$($1:0:2)
t="$s"+=" $2"+=" $3"
echo  $1 $2 $3 $(wc -l $1) >> "$t.csv"
echo  $(head -n 1 $1) >> "$t.csv"
echo  $(cat $1 | grep $3) >> "$t.csv"
 
