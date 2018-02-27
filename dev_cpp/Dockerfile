# BioTracker @FU-Berlin
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

COPY install_gui.sh /home/install_gui.sh
RUN cd /home && bash install_gui.sh

COPY install_cpp_env.sh /home/install_cpp_env.sh
RUN cd /home && bash install_cpp_env.sh

RUN wget "https://github.com/atom/atom/releases/download/v1.21.2/atom-amd64.deb"
RUN apt-get install -y libnotify4 libnss3 gvfs-bin xdg-utils htop gconf-service gconf2 cmake
RUN apt-get install -y build-essential libgtk2.0-dev
RUN dpkg --install atom-amd64.deb
RUN rm atom-amd64.deb
RUN apt-get install -y libasound2

RUN git clone https://github.com/amix/vimrc.git ~/.vim_runtime
RUN sh ~/.vim_runtime/install_awesome_vimrc.sh

RUN ["/bin/bash"]
