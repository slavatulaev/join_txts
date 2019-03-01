#!/bin/sh
# join all files in directory into one
# first parametr - directory with *.txt files
# second parametr - output txt file

dirWithTxts=$1
outputTxt=$2

f=`find $dirWithTxts -name *.txt`
echo '' > $outputTxt
for file in $f
do
    echo "Processing ${file}"
    cat ${file} >> $outputTxt
done