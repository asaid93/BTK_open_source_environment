#!bin/bash

buckarr=$(awk 'sub(/\//," ") {print $1"\t"}' awsfile.txt)
extarr=$(awk 'sub(/\//," ") {print $2"\t"}' awsfile.txt)

echo ${extarr[@]}

for i in "${buckarr[@]}"
do
	y=${buckarr[@]}
	echo "buckk $y"
done
