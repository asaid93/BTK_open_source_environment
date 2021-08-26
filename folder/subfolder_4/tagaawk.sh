awk 'NR==FNR{seen[$1$2$4]++;

 m=seen[$1$2$4]
 x=col3_min[$1$2$4]
 y=col3_max[$1$2$4]
 z=col5_min[$1$2$4]
 t=col5_max[$1$2$4]

col3_min[$1$2$4]=(m==1||$3<x)?$3:x
col3_max[$1$2$4]=($3>y)?$3:y
col5_min[$1$2$4]=(m==1||$5<z)?$5:z
col5_max[$1$2$4]=($5>t)?$5:t;
next}
{
 m=seen[$1$2$4]
 x=col3_min[$1$2$4]
 y=col3_max[$1$2$4]
 z=col5_min[$1$2$4]
 t=col5_max[$1$2$4]

for (i=1;i<=length(seen);i++)
       	if(m==i && $3>=x-1 && $3<=y+1 && $5>=z-1 && $5<=t+1)
               	print $0}' file2 file1

