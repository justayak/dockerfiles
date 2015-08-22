# BioTracker @FU-Berlin
FROM ubuntu:15.10

ENV DEBIAN_FRONTEND noninteractiv

RUN echo 'initializing BioTracker dev environment'

RUN apt-get update && apt-get install -y \
    git \
    apt-utils \
    build-essential \
    libgtk2.0-dev \
    cmake \
    cmake-gui \
    mesa-common-dev \
    libglu1-mesa-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    qt5-default \
    libopencv-dev \
    libboost-all-dev \
    libc++abi-dev

RUN apt-get install -y --no-install-recommends doxygen

VOLUME ['~/biotracker:/biotracker']

RUN /bin/bash
