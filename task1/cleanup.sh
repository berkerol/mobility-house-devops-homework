#!/bin/bash

directories=$(find /opt -type f -name '.prune-enable' | sed -r 's|/[^/]+$||')
# echo "$directories"

for directory in $directories
do
    find $directory -type f -name 'crash.dump' -delete
    files=$(find $directory -type f -name '*.log' -size +1M)
    # echo "$files"
    for file in $files
    do
        tail -n 20000 $file > "$file.tmp"
        mv -f "$file.tmp" $file
    done
done
