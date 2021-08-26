awk -v FS='[|]' '{	for(i=FNR ; i<=NR && i<=FNR && NR==FNR; i++) {x++; arr1[c++]=$2}
			for(i=FNR ; i+x<=NR && i<=FNR && NR==FNR+x; i++) {y++; arr2[l++]=$3}
			for(i=FNR ; i+x+y<=NR && i<=FNR && NR==FNR+x+y; i++) { arr3[m++]=$1}
		 }	
		END {	for (c=0 ; c in arr1 ; c++) 
				for (l=0 ; l in arr2 ; l++)  
					if (arr1[c] == arr2[l]) 
						arr4[k++] = arr1[c]
			
			for (k=1 ; k in arr4 ; k++)	
				print arr4[k]		}' file1 file2 file3
