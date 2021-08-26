#!/bin/bash
first=$1
operator=$2
second=$3
printf "$first:$second"	|
awk -F: -v oper=$operator '{ 
	if(oper=="+") 
		secs = (60*($1+$3) + ($2+$4));
	else if(oper=="-") 
		secs = ((60*$1+$2) - (60*$3+$4));
	if(secs>=3600)
		printf "%02d:%02d:%s\n", secs/3600, secs%3600/60, secs%60;
	else	
		printf "%02d:%s\n", secs%3600/60, secs%60}'
