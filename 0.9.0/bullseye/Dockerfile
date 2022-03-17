FROM python:3.9-bullseye

COPY requirements.txt .

# Install relevant system packages
RUN apt-get update && apt install -y --no-install-recommends \
  build-essential \
  libatlas-base-dev \
  libgdal-dev \
  gfortran

# Install relevant pip packages
RUN pip3 install --upgrade pip && \
  pip3 install --no-cache-dir -r requirements.txt
