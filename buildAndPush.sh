#!/usr/bin/env bash
# Usage: buildAndPush.sh <new_version_number>
# Example: buildAndPush.sh 1.0.0

if [ $# -ne 1 ]; then
	echo 'Usage: buildAndPush.sh <new_version_number>'
	exit 1
fi

ver="$1"

main() {
	docker build --tag git-lfs:latest \
	             --tag git-lfs:"$ver" \
	             --tag gcr.io/public-side-projects/git-lfs:latest \
	             --tag gcr.io/public-side-projects/git-lfs:"$ver" \
	             . \
		|| exitOnError 'docker build failed'
	docker push gcr.io/public-side-projects/git-lfs:latest \
		|| exitOnError 'docker push latest failed'
	docker push gcr.io/public-side-projects/git-lfs:"$ver" \
		|| exitOnError "docker push $ver failed"
}

exitOnError() {
	if [ -n "$1" ]; then
		echo -e "<== ERROR: $1 \a\a\a"
	else
		echo -e '<== An error occured. Exiting just in case. \a\a\a'
	fi
	exit 2
}

main
