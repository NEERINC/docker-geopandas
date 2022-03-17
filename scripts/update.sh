#!/usr/bin/env bash

echo
echo "***** WARNING *****"
echo
echo "The *-alpine variant of this image can take up to 30 minutes to build due to no pre-compiled binaries existing in Alpine."
echo "If you want to update a non-Alpine tag, it is recommended to build it individually."
echo
echo "Continue anyways?"
read -p "Press any key to continue, or Ctrl+C to cancel "

BASE=$(dirname "$0")

# 0.9.0
#docker push $(VERSION=0.9.0 VARIANT=alpine ${BASE}/build.sh)
docker push $(VERSION=0.9.0 VARIANT=bullseye ${BASE}/build.sh)
docker push $(VERSION=0.9.0 VARIANT=buster ${BASE}/build.sh)
