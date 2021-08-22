# syntax=docker/dockerfile:1.0

FROM python:3.9.6

LABEL name="docker-geopandas"
LABEL description="Base docker image for working with geospatial data."
LABEL url="https://github.com/NEERINC/docker-geopandas"
LABEL maintainer="matthew@neer.ai"

# Setting PYTHONUNBUFFERED to a non empty value ensures that the python output
# is sent straight to terminal without being first buffered and that you can
# see the output of your application in real time
ENV PYTHONUNBUFFERED 1

# Install relevant system packages
RUN apt update && apt install -y --no-install-recommends \
    build-essential libatlas-base-dev gfortran binutils \
    libproj-dev libpq-dev libgdal-dev gdal-bin

RUN pip3 install \
    "numpy>=1.20.0,<1.21.0" \
    "scipy>=1.6.1,<1.8.0" \
    "pandas>=1.2.0,<1.3.0" \
    "geopandas>=0.8.0,<1.0.0"

CMD ["python3"]
