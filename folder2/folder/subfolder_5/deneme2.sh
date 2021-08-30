awk '

function print_line() {

    if ( length(header) > 0 )
       printf "%s\n", header

    if ( length(line) > 0 )
       printf "%s\n", line

    header=""                           # reset
    line=""                             # variables
}

FNR==1  { print_line()                  # if first record => flush previous file to stdout
          delim=""                      # reset initial delimiter to empty string
        }

FNR==NR { header = header delim $1 }    # if this is the first file then also build the "header" line

        { line   = line   delim $2      # append current field #2 to our "data" line
          delim  = OFS                  # after first row set delimiter to awk default field delimiter == OFS == "<space>"
        }

END     { print_line() }                # flush last line to stdout
' */*
