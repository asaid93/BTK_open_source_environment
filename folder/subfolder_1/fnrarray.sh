awk -v FS='[|]' '{      for(i=FNR ; i<=NR && i<=FNR && NR==FNR; i++)	     {x++; print "NR:",NR,"FNR1:",i,"FNR:",FNR,"\tfirst file\t"}
                        for(i=FNR ; i+x<=NR && i<=FNR && NR==FNR+x; i++)     {y++; print "NR:",NR,"FNR2:",i+x,"FNR:",FNR,"\tsecond file\t"}
                        for(i=FNR ; i+x+y<=NR && i<=FNR && NR==FNR+x+y; i++) { print "NR:",NR,"FNR3:",i+x+y,"FNR:",FNR,"\tthird file\t"}
		}' file1 file2 file3                        

