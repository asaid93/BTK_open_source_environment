#/bin/bash

OFFSET=$(date +%u)
COMMAND="date --date=\"$OFFSET days ago\" +%Y%m%d"
DATEFULL=$(eval "$COMMAND")

echo offset $OFFSET
echo command $COMMAND
echo datefull $DATEFULL
