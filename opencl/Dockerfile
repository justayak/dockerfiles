# BioTracker @FU-Berlin
FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    git \
    apt-utils \
    build-essential \
    libgtk2.0-dev \
    cmake \
    cmake-gui \
    libglu1-mesa-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    qt5-default \
    libboost-all-dev \
    libc++abi-dev \
    software-properties-common

RUN add-apt-repository ppa:paulo-miguel-dias/mesa && \
    apt-get update && \
    apt-get install -y libclc-amdgcn mesa-opencl-icd

RUN apt-get install -y \
    pciutils
