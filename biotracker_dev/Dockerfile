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

RUN apt-get install -y qtcreator

RUN apt-get install -y astyle
RUN apt-get install -y zsh

RUN curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash

COPY a.jpg /home/a.jpg
COPY b.jpg /home/b.jpg
COPY big_buck_bunny.avi /home/big_buck_bunny.avi

RUN git clone https://github.com/BioroboticsLab/biotracker.git /home/biotracker

RUN /bin/bash
