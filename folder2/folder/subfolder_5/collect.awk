#!/usr/bin/env awk -f

{
    head[$1] = 1
    data[ARGIND,$1] = $2
}

END {
    for (key in head)
        printf "%s ", key
    printf "\n"

    for (i = 1; i <= ARGIND; i++) {
        for (key in head)
            printf "%s ", data[i,key]
        printf "\n"
    }
}
