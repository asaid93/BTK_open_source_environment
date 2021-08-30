awk 'NR==FNR{ if(!seen[$1$2$4]++) a[x++]=$1$2$4;
col3_min=(NR==1||$3<col3_min)?$3:col3_min
col3_max=($3>col3_max)?$3:col3_max
col5_min=(NR==1||$5<col5_min)?$5:col5_min
col5_max=($5>col5_max)?$5:col5_max;
next}
{for (x in a)
	if(a[x]==$1$2$4 && $3>=col3_min-1 && $3<=col3_max+1 && $5>=col5_min-1 && $5<=col5_max+1)
		print col3_min,col3_max,col5_min,col5_max}' file2 file1

