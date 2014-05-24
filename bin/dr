#!/usr/bin/env bash

[[ -z "$1" ]] && {
	echo "You must pass the image name as the first argument." >&2
	exit 1
}
docker run --rm -it "cjlyth/${1%%/}" "${@:2}"

# find /tmp/ -maxdepth 3 -mindepth 2 -type d
