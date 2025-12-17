#!/usr/bin/env bash

if [[ -z "$1" ]] || [[ -z "$2" ]] ; then
	echo "usage: ./writer.sh writefile writestr"
	exit 1
fi

mkdir -p $(dirname $1)
echo $2 > $1
exit 0
