awk -v FS='["|.]' '{	for(i=FNR ; i<=NR && i<=FNR && NR==FNR; i++) {x++; arr1[c++]=$2}
			for(i=FNR ; i+x<=NR && i<=FNR && NR==FNR+x; i++) {y++; arr2[l++]=$3}
			for(i=FNR ; i+x+y<=NR && i<=FNR && NR==FNR+x+y; i++) { arr3[m++]=$1}}
			
		 {	for (c=1 ; c in arr1 ; c++) 
				for (l=1 ; l in arr2 ; l++)  
					for (m=1 ; m in arr3 ; m++)
						if ((arr1[c] == arr2[l]) || (arr1[c] == arr3[m])) 
							arr4[k++] = arr1[c]
							
			for (k=1 ; k in arr4 ; k++)	
				print arr4[k]
								}' file1.txt file2.txt file3.txt
