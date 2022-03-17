#!/usr/bin/env bash

docker pull neerteam/geopandas:0.9.0-bullseye-amd64-linux
docker tag neerteam/geopandas:0.9.0-bullseye-amd64-linux neerteam/geopandas:0.9.0
docker push neerteam/geopandas:0.9.0
