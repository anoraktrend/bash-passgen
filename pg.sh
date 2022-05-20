#!/bin/bash

# parse opts
while getopts "l:c:" opts; do
	case "$opts" in
	l) LEN=${OPTARG}     ;;
	c) CHARSET=${OPTARG};;
	*) return 1	     ;;
	esac
done

if [ -z "$LEN" ]; then
	LEN=64
fi

if [ -z "$CHARSET" ]; then
	echo $(cat /dev/urandom | head | base64) | sed -e "s/ //g" | fold -w$LEN | head -n1
else
	echo $(cat /dev/urandom | head | base64) | sed -e "s/ //g" | fold -w1 | grep "[$CHARSET]" | xargs | sed -e "s/ //g" | fold -w$LEN | head -n1
fi

