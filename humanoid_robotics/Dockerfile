FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'initializing BioTracker dev environment'

RUN apt-get update && apt-get install -y \
    x11-apps \
    wget \
    tmux \
    vim \
    curl \
    htop \
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
RUN apt-get install -y qtcreator
RUN apt-get install -y libzmq-dev
RUN apt-get install -y python-dev
RUN apt-get install -y python3-dev

RUN apt-get install -y libprotobuf-dev
RUN apt-get install -y python-protobuf
RUN apt-get install -y protobuf-compiler mercurial

COPY .temp/group-17 /home/group-17

RUN hg clone https://bitbucket.org/eigen/eigen/ /home/eigen && \
    cd /home/eigen && mkdir build && cd build && cmake .. && \
    make install
