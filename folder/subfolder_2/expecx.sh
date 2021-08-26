#!/usr/bin/expect -f

set timeout -1

spawn yum remove perl

expect {
    # case branch
    "Is this ok [y/N]: " { send -- "N\r" }
}

expect eof
