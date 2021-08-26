awk '{	if(NF=="9") print substr($3,1,1) substr($4,1,1) $2 substr($6,1,1) substr($7,1,1),$2,$1,$5,$9
	if(NF=="7") print substr($3,1,1) $2 substr($5,1,1),$2,$1,$2,$7}' uppercase.txt
