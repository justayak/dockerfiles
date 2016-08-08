# BioTracker @FU-Berlin
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractiv

RUN echo 'initializing BioTracker dev environment'

RUN apt-get update && apt-get install -y \
    tmux \
    x11-apps \
    wget \
    curl \
    git \
    apt-utils \
    build-essential \
    python-rosdep \
    python-rosinstall-generator \
    python-wstool \
    python-rosinstall \
    build-essential

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

RUN apt-get update && \
    apt-get install -y ros-indigo-desktop-full

RUN rosdep init && rosdep update

#RUN mkdir ros_catkin_ws && cd ros_catkin_ws && \
#    rosinstall_generator desktop_full \
#        --rosdistro kinetic --deps --wet-only --tar \
#         > kinetic-desktop-full-wet.rosinstall \
#    && wstool init -j8 src kinetic-desktop-full-wet.rosinstall

#RUN cd ros_catkin_ws && \
#    rosdep install --from-paths src --ignore-src --rosdistro kinetic -y \
#    && ./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release

RUN /bin/bash
