awk 'NR==FNR{ if(!seen[$1$2$4]++) a[x++]=$1$2$4;
col3_min[$1$2$4]=(NR==1||$3<col3_min[$1$2$4])?$3:col3_min[$1$2$4]
col3_max[$1$2$4]=($3>col3_max[$1$2$4])?$3:col3_max[$1$2$4]
col5_min[x]=(NR==1||$5<col5_min[x])?$5:col5_min[x]
col5_max[x]=($5>col5_max[x])?$5:col5_max[x];
next}
{for (x in a)
        if(a[x]==$1$2$4 && $3>=col3_min[$1$2$4]-1 && $3<=col3_max[$1$2$4]+1 && $5>=col5_min[x]-1 && $5<=col5_max[x]+1)
                print col3_min[$1$2$4],col3_max[$1$2$4],col5_min[x],col5_max[x]}' file2 file1


