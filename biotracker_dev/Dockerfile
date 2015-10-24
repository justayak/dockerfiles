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

RUN apt-get install -y libzmq-dev

RUN apt-get install -y python-dev
RUN apt-get install -y python3-dev
RUN apt-get install -y python-numpy
RUN apt-get install -y python3-numpy
RUN apt-get install -y astyle
RUN apt-get install -y zsh

RUN curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash

COPY a.jpg /home/a.jpg
COPY b.jpg /home/b.jpg
COPY big_buck_bunny.avi /home/big_buck_bunny.avi

#RUN git clone https://github.com/BioroboticsLab/biotracker.git /home/biotracker

#install libsodium
RUN apt-get install -y libtool-bin
RUN apt-get install -y autoconf
RUN cd /home && git clone git://github.com/jedisct1/libsodium.git
RUN cd /home/libsodium && ./autogen.sh
RUN cd /home/libsodium && ./configure && make -j4
RUN cd /home/libsodium && make install
run cd /home/libsodium && ldconfig

#install libzmq
RUN cd /home && git clone git://github.com/zeromq/libzmq.git
RUN cd /home/libzmq && ./autogen.sh
RUN cd /home/libzmq && ./configure && make -j4
RUN cd /home/libzmq && make install
RUN cd /home/libzmq && ldconfig

#install czmq
RUN cd /home && wget https://github.com/zeromq/czmq/archive/v3.0.2.tar.gz
RUN cd /home && tar -zxf v3.0.2.tar.gz
RUN cd /home/czmq-3.0.2 && ./autogen.sh
RUN cd /home/czmq-3.0.2 && ./configure
RUN cd /home/czmq-3.0.2 && make -j4
RUN cd /home/czmq-3.0.2 && make install && ldconfig

RUN apt-get install -y python-zmq

RUN git clone https://github.com/BioroboticsLab/biotracker_core.git /biotracker_core
RUN git clone https://github.com/BioroboticsLab/biotracker_gui.git /biotracker_gui

RUN cd /home && curl -L https://github.com/zeromq/czmq/archive/v3.0.2.tar.gz

RUN /bin/zsh
