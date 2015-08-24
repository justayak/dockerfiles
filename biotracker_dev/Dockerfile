# BioTracker @FU-Berlin
FROM justayak/dev

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

RUN apt-get install qtcreator

RUN useradd julian -u 1000 -s /bin/bash --no-create-home

#WORKDIR /home/julian/
#ENV HOME /home/julian

#VOLUME ['/home']

USER julian

RUN /bin/bash
