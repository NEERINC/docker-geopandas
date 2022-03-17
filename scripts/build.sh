#!/usr/bin/env bash

. $(dirname "$0")/functions.sh

# Check that the VERSION variable is set
if [[ -z "${VERSION}" ]]
then
    echo "Environment variable \"VERSION\" is required, please export it and try again."
    exit 1
fi

# Check that the VARIANT variable is set
if [[ -z "${VARIANT}" ]]
then
    echo "Environment variable \"VARIANT\" is required, please export it and try again."
    exit 1
fi

TAG="neerteam/geopandas:${VERSION}-${VARIANT}-$(get_arch)-linux"

# Build the image and tag it
docker build --tag $TAG ./$VERSION/$VARIANT/. --progress=plain

echo ${TAG}
