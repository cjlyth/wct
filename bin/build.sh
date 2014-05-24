#!/usr/bin/env bash

# ./build.sh mysql-provided && ./build.sh tomcat-provided && ./build.sh wct-provided && ./build.sh wct

vcolor='tput setaf 6'
fcolor='tput setaf 1'
scolor='tput setaf 2'

reset='tput sgr0'

function print-val()
{
	echo -e "$(${2:-$vcolor})$1$($reset)"
}
function print-vals()
{
	echo -e "$1: $(print-val $2)"
}

[[ -z "$1" ]] && {
	echo "You must pass the image name as the first argument." >&2
	exit 1
}

script_path="$(cd $(dirname $0) && pwd)"
[[ -d "$script_path/$1" ]] || {
	echo "The image name argument \"$1\" must be relative to \"$script_path\"." >&2
	exit 2
}

repo_src="$(cd $script_path/$1 && pwd)"
[[ -s "$repo_src/Dockerfile" ]] || {
	echo "Unable to find a non empty Dockerfile in \"$repo_src\" " >&2
	exit 3	
}

repo_name="${repo_src##*/}"

docker_username="${docker_username:-$(docker info | grep -Ei '^username: ' | awk '{print $2}')}"
docker_username=${docker_username:-${script_path##*/}}

print-vals "username" "$docker_username"
print-vals "repo_name" "$repo_name"
print-vals "source" "$repo_src"

build_tag="$docker_username/$repo_name"

docker build -t "$build_tag" "$repo_src" && {
	echo -e "Docker build $(print-val "complete" "$scolor") for image \"$(print-val $build_tag)\" from \"$(print-val $repo_src/Dockerfile)\""
	exit 0
} || {
	echo -e "Docker build $(print-val "failed" "$fcolor") for \"$(print-val $repo_src/Dockerfile)\""
	exit 3
}