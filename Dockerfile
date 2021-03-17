FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04

# AUTHOR Guillaume Dumont <gdumont@cimmi.ca>
ARG DEBIAN_FRONTEND="noninteractive"

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV TZ=America/Montreal

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    gfortran \
    python3 \
    python3-pip \
    libpython3-all-dev \
    git \
    wget \
    unzip

RUN python3 -m pip install torch==1.1
WORKDIR /work
RUN python3 setup.py develop