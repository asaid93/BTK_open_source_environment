awk -F":" '$2~/[[:digit:]]\"$/{gsub(/\"/," ",$2)} {print $0}' json.txt

