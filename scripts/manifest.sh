#!/usr/bin/env bash

# 0.9.0-alpine
docker manifest create --amend neerteam/geopandas:0.9.0-alpine \
    neerteam/geopandas:0.9.0-alpine-amd64-linux \
    neerteam/geopandas:0.9.0-alpine-arm64-linux
docker manifest push neerteam/geopandas:0.9.0-alpine

# 0.9.0-bullseye
docker manifest create --amend neerteam/geopandas:0.9.0-bullseye \
    neerteam/geopandas:0.9.0-bullseye-amd64-linux \
    neerteam/geopandas:0.9.0-bullseye-arm64-linux
docker manifest push neerteam/geopandas:0.9.0-bullseye

# 0.9.0-buster
docker manifest create --amend neerteam/geopandas:0.9.0-buster \
    neerteam/geopandas:0.9.0-buster-amd64-linux \
    neerteam/geopandas:0.9.0-buster-arm64-linux
docker manifest push neerteam/geopandas:0.9.0-buster
