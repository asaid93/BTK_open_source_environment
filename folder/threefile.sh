awk -v FS='["|.]' '{	for(i=FNR ; i<=NR && i<=FNR && NR==FNR; i++) {x++; arr1[k++]=$2}
			for(i=FNR ; i+x<=NR && i<=FNR && NR==FNR+x; i++) {y++; arr2[l++]=$3}
			for(i=FNR ; i+x+y<=NR && i<=FNR && NR==FNR+x+y; i++) { arr3[m++]=$1}}
			
			END {	for(k=0;k in arr1;k++) {print arr1[k]}
				for(l=0;l in arr2;l++) {print arr2[l]}
				for(m=0;m in arr3;m++) {print arr3[m]}	}' file1.txt file2.txt file3.txt
