awk -v RS='[*][*]\n[*][*]' '{gsub(/[*]|\n$/,""); if(!visited[$0]++) print $0}' file
