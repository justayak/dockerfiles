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

RUN apt-get install -y nodejs
RUN ln -s "$(which nodejs)" /usr/bin/node
