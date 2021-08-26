for dir in ./rowfolder*
do
	echo $dir
	awk '{$1=FS="";ORS=""}1;END{print "\n"}' $dir/* >> finalfile.txt
done
