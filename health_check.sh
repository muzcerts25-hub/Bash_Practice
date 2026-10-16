#! /usr/bin/env bash

if (($# == 0)) ;then
	echo "directory name not provided" >&2
	exit 1
fi

for name in "$@"; do
		if [[ -d $name ]]; then
	       		echo "Script: $0"
       			echo "Checking directory: $name"
 			echo "SUCCESS: DIRECTORY EXISTS"
		else
			echo "Script: $0"
			echo "Checking directory: $name"
			echo "ERROR: Directory does not exist"
			exit 2
		fi
done
