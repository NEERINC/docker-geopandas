#!/usr/bin/env bash

echo
echo "***** WARNING *****"
echo
echo "This image takes a very long time to build, even the alpine variants."
echo "Expect total build time for all versions/variants to take at least 10 minutes each on a fast system, and even longer on slower systems."
echo "If you are just wanting to update a single tag, it is recommended to build for that version/variant individually."
echo
echo "Continue anyways?"
read -p "Press any key to continue, or Ctrl+C to cancel "

BASE=$(dirname "$0")

# 0.9.0
docker push $(VERSION=0.9.0 VARIANT=alpine ${BASE}/build.sh)
docker push $(VERSION=0.9.0 VARIANT=bullseye ${BASE}/build.sh)
docker push $(VERSION=0.9.0 VARIANT=buster ${BASE}/build.sh)
