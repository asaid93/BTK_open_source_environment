lastline=$(wc -l < log) | awk -F'"' -v line=$lastline '{ if(NR<=line/2) arr[NR]=$0; gsub(/^ +/,"",$0); if(NR>line/2) print arr[NR-line/2] $0}' log
