echo " A B C" > final.txt | for dir in ./sub*;do awk '{$1="";ORS=""}1;END{print "\n"}' $dir/* >> final.txt; done
