awk 'NR==FNR{ seen[$1$2$4]++;
col3_min[$1$2$4]=(seen[$1$2$4]==1||$3<col3_min[$1$2$4])?$3:col3_min[$1$2$4]
col3_max[$1$2$4]=($3>col3_max[$1$2$4])?$3:col3_max[$1$2$4]
col5_min[$1$2$4]=(seen[$1$2$4]==1||$5<col5_min[$1$2$4])?$5:col5_min[$1$2$4]
col5_max[$1$2$4]=($5>col5_max[$1$2$4])?$5:col5_max[$1$2$4];
next}
{x=col3_min[$1$2$4]
 y=col3_max[$1$2$4]
 z=col5_min[$1$2$4]
 t=col5_max[$1$2$4]
for (i=1;i<=length(seen);i++)
        if(seen[$1$2$4]==i && $3>=x-1 && $3<=y+1 && $5>=z-1 && $5<=t+1)
                print $0}' file2 file1

