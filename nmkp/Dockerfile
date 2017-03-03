#Julians default dev build
FROM ubuntu:16.04


ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    firefox \
    git \
    apt-utils \
    x11-apps \
    git \
    tmux \
    vim \
    vim-gnome \
    curl \
    python3-dev \
    python-dev \
    build-essential \
    cmake \
    libgtk2.0-dev \
    pkg-config

RUN apt-get install -y nodejs \
    wget \
    build-essential \
    libfontconfig1 \
    mesa-common-dev \
    libglu1-mesa-dev \
    qt5-default \
    npm \
    default-jre \
    default-jdk \
    ubuntu-make

RUN wget https://dl.google.com/dl/android/studio/ide-zips/2.3.0.8/android-studio-ide-162.3764568-linux.zip && unzip android-studio-ide-162.3764568-linux.zip
    
RUN ln -s "$(which nodejs)" /usr/bin/node

RUN npm install -g cordova
