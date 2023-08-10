#!/bin/bash

IFS_BAK=$IFS
IFS='
'

for file in $(git ls-files --recurse-submodules)
do
	time=$(git log --format='%ci' -n 1 "$file")
	if ! [ "$time" ]; then
		echo "$file : NA"
		continue
	fi
	ftime=$(date -d "$time" '+%Y%m%d%H%M.%S')
	touch -t "$ftime" -cm "$file"
	echo "$file : $time"
done

IFS=$IFS_BAK
