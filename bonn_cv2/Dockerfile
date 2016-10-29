# BioTracker @FU-Berlin
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractiv
ENV LD_LIBRARY_PATH /usr/local/lib

COPY ssh/id_rsa /root/.ssh/id_rsa
COPY ssh/id_rsa.pub /root/.ssh/id_rsa.pub

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y \
    apt-utils \
    x11-apps \
    git \
    gitk \
    wget \
    tmux \
    vim \
    vim-gnome \
    curl \
    firefox \
    python3-dev \
    python-dev

RUN apt-get install -y \
    build-essential \
    cmake \
    libgtk2.0-dev \
    pkg-config \
    libavcodec-dev \
    libavformat-dev \
    pkg-config \
    libjpeg8-dev \
    libtiff5-dev \
    libjasper-dev \
    libpng12-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libv4l-dev \
    python-dev \
    python3-dev \
    libpython3-dev \
    libpython3.5-dev \
    libatlas-base-dev \
    gfortran

RUN git config --global user.email "jutanke@googlemail.com"

RUN git clone https://github.com/justayak/dotfiles.git && \
    ln -s /dotfiles/vim /root/.vim && \
    ln -s /dotfiles/vim/vimrc /root/.vimrc && \
    echo "hello4"

RUN cd /dotfiles && bash run.sh

RUN git clone https://github.com/Itseez/opencv.git
RUN mkdir opencv/build && \
    cd opencv && git checkout 2.4

RUN cd opencv/build && cmake .. \
    && make -j4 \
    && make install

RUN /bin/bash
