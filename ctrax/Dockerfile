# BioTracker @FU-Berlin
FROM ubuntu:12.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y x11-apps \
    git \
    gitk \
    wget \
    tmux \
    subversion \
    vim \
    curl


ENV DEBIAN_FRONTEND noninteractiv

RUN echo 'initializing BioTracker dev environment'

RUN apt-get update && apt-get install -y \
    software-properties-common \
    python-software-properties \
    git \
    firefox \
    python \
    python-dev \
    wget \
    python-wxgtk2.8 \
    python-scipy \
    python-imaging \
    python-opencv \
    python-matplotlib \
    cython 

#RUN add-apt-repository ppa:astraw/ppa
#RUN wget --output-document=/etc/apt/sources.list.d/astraw.list http://debs.astraw.com/sources.list.d/astraw-$(lsb_release -cs).list

RUN wget -q http://debs.strawlab.org/astraw-archive-keyring.gpg -O - | apt-key add -
RUN sh -c 'echo "deb http://debs.strawlab.org/ precise/" >> \
   /etc/apt/sources.list.d/strawlab_public.list'
RUN sh -c 'echo "deb-src http://debs.strawlab.org/ precise/" >> \
   /etc/apt/sources.list.d/strawlab_public.list'
RUN add-apt-repository ppa:ctrax/ppa
RUN apt-get update
RUN apt-get install -y python-ctrax python-matplotlib

# just for fun, lets see ctrax source code
RUN svn checkout svn://svn.code.sf.net/p/ctrax/code/trunk ctrax-code

RUN /bin/bash
