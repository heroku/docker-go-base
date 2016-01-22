#!/bin/bash
set -e

versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
	versions=( */ )
fi
versions=( "${versions[@]%/}" )

echo "${versions[@]}"

for version in "${versions[@]}"; do
   (
		 set -x
     ev=$(< $version/current_version)
		 < Dockerfile sed -E 's/^(ENV GOVERSION) .*/\1 go'"$ev"'/' > $version/Dockerfile
  )
done
