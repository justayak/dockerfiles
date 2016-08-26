# BioTracker @FU-Berlin
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y \
    firefox \
    wget \
    cmake \
    tmux \
    llvm \
    clang \
    x11-apps \
    git \
    gitk \
    vim \
    curl \
    build-essential

RUN wget https://download.jetbrains.com/cpp/CLion-2016.2.1.tar.gz
RUN tar xfz CLion-2016.2.1.tar.gz

RUN ["/bin/bash"]
