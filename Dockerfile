# syntax=docker/dockerfile:1.0

FROM python:3.9.6

LABEL name="@neerteam/geopandas"
LABEL version="0.8"
LABEL description="Base docker image for working with geospatial data."
LABEL keywords="python,docker,dockerfile,docker-image,geospatial,geospatial-data,numpy,pandas,scipy"
LABEL homepage="https://github.com/NEERINC/docker-geopandas#readme"
LABEL license="GPL-3.0"
LABEL author="Matthew Downs <matthew@neer.ai>"

# Install relevant system packages
RUN apt-get update && apt install -y --no-install-recommends \
    libatlas-base-dev \
    libgdal-dev \
    gfortran

# Setting PYTHONUNBUFFERED to a non empty value ensures that the python output
# is sent straight to terminal without being first buffered and that you can
# see the output of your application in real time
ENV PYTHONUNBUFFERED 1

# Install relevant pip packages
RUN pip3 install \
    "numpy>=1.20.0,<1.21.0" \
    "scipy>=1.6.1,<1.8.0" \
    "pandas>=1.2.0,<1.3.0" \
    "geopandas==0.8"

# Execute python3
CMD ["python3"]
