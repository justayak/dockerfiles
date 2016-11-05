# BioTracker @FU-Berlin
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

COPY install_gui.sh /home/install_gui.sh
RUN cd /home && bash install_gui.sh

COPY install_cpp_env.sh /home/install_cpp_env.sh
RUN cd /home && bash install_cpp_env.sh

RUN ["/bin/bash"]
