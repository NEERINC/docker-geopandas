FROM python:3.9-alpine3.15

COPY requirements.txt .

# Install relevant system packages
RUN apk add --no-cache \
  build-base \
  proj-util \
  openblas-dev \
  gdal-dev \
  gfortran

# Install relevant pip packages
RUN pip3 install --upgrade pip && \
  pip3 install --no-cache-dir -r requirements.txt
