FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV LD_LIBRARY_PATH /usr/local/lib

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

RUN git clone https://github.com/Itseez/opencv.git
RUN mkdir opencv/build && \
    cd opencv && git checkout 3.2.0

RUN cd opencv/build && cmake .. \
    && make -j4 \
    && make install

RUN wget "https://github.com/atom/atom/releases/download/v1.16.0/atom-amd64.deb"
RUN apt-get install -y libnotify4 \
    libnss3 gvfs-bin xdg-utils htop \
    && dpkg --install atom-amd64.deb

RUN rm atom-amd64.deb

COPY .DONTADDfgf /home/fgf
