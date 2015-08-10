#!/bin/bash

echo Enter location of file for lookup:
read file

ns=208.67.222.222

        while read p; do
        echo -n $p
        echo -n "  |  "
        dig +short $p @${ns} ${hostQuery} | \
        egrep "^[0-9]" | \
        head -1
        done <$file
