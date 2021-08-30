awk '
    ARGIND == 1 { pos = "first" }
    ARGIND == 2 { pos = "second" }
    ARGIND == 3 { pos = "third" }
    { print "NR:", NR, "FNR" ARGIND ":", NR, "FNR:", FNR, pos " file" }
' file1 file2 file3
