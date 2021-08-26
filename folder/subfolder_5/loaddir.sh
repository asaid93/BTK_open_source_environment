#!bin/bash
for i in $(df -h |awk 'NR!=1 && $5<="10%" {print $6}')
do 
     echo $i
#and-do-this cd $i
#and-do-etc
     echo "Hello-World"
done
