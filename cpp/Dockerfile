# BioTracker @FU-Berlin
FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y \
    firefox \
    wget \
    cmake \
    tmux \
    llvm \
    clang \
    build-essential

RUN /bin/bash
