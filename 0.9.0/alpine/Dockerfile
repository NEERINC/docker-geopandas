ARG REQUIREMENTS="numpy>=1.22.3 scipy>=1.8.0 pandas>=1.4.1 geopandas==0.9.0"

FROM python:3.9-alpine3.15 as build

# Install relevant system packages
RUN apk add --no-cache \
  build-base \
  openblas-dev \
  gdal-dev \
  gfortran

# Build pip wheels
RUN pip install --upgrade pip && \
  pip wheel --no-cache-dir --no-deps --wheel-dir /wheels $REQUIREMENTS

# Get a fresh image
FROM python:3.9-alpine3.15

COPY --from=build /wheels /wheels

# Install pip packages from .whl files
RUN pip install --upgrade pip && \
  pip install --no-index --find-links=/wheels $REQUIREMENTS
