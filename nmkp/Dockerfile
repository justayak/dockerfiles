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

#RUN wget https://dl.google.com/dl/android/studio/ide-zips/2.3.0.8/android-studio-ide-162.3764568-linux.zip && unzip android-studio-ide-162.3764568-linux.zip
    
RUN ln -s "$(which nodejs)" /usr/bin/node

#RUN npm install -g cordova

RUN apt-get install -y libxss1

RUN wget "https://github.com/atom/atom/releases/download/v1.16.0/atom-amd64.deb"
RUN apt-get install -y libnotify4 \
    libnss3 gvfs-bin xdg-utils htop \
    && dpkg --install atom-amd64.deb


COPY .DONTADD_pkmn /home/pkmn
