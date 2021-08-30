{if(NF=="7") printf "%s-%s - %02d - %s\n", substr($3,1,1), substr($5,1,1), $1, $7; if(NF=="9") printf "%s%s-%s%s - %02d - %s\n", substr($3,1,1), substr($4,1,1), substr($6,1,1), substr($7,1,1), $1, $9}

