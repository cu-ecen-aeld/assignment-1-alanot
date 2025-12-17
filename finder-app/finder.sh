#!/usr/bin/env bash

if [[ -z "$1" ]] || [[ -z "$2" ]] || [[ ! -d "$1" ]] ; then
	echo "usage: ./finder.sh filesdir searchstr"
	exit 1
fi

contents=$(grep -r "$2" "$1")
num_files=$(printf '%s \n' $contents | cut -d ":" -f1 | uniq | wc -l)
match=$(printf '%s \n' $contents | wc -l)
echo "The number of files are $num_files and the number of matching lines are $match"
exit 0
