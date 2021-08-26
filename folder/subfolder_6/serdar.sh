awk '{
          if($3=="stop")
             arr[$1$4]=$2
    }
    {
          for (i=1;i<=length(arr);i++) 
             if(arr[$1$4]<$2 && $3=="start")
                print $0
    }' log
