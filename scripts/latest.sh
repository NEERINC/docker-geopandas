#!/usr/bin/env bash

docker pull neerteam/geopandas:0.9.0
docker tag neerteam/geopandas:0.9.0 neerteam/geopandas:latest
docker push neerteam/geopandas:latest
