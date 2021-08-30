#!bin/bash

declare -a buckarr
declare -a extarr

buckarr=($(awk 'sub(/\//," ") {print $1"\t"}' awsfile.txt))
extarr=($(awk 'sub(/\//," ") {print $2"\t"}' awsfile.txt))

buckarrlength=${#buckarr[@]}
extarrlength=${#extarr[@]}

for ((i=0; i<buckarrlength; i++))
do
	y=${buckarr[i]}
	x=${extarr[i]}
	echo $y $x $i
done
