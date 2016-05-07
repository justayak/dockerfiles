# BioTracker @FU-Berlin
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
	x11-apps \
	vim \
	software-properties-common \
	python3-software-properties \
	curl

RUN add-apt-repository ppa:ubuntu-wine/ppa
RUN apt-get install -y \
	cups-bsd \
	gnome-exe-thumbnailer \
	kde-runtime \
	fonts-liberation \
	fonts-horai-umefont \
	fonts-unfonts-core \
	ttf-wqy-microhei

RUN apt-get update && apt-get install -y wine1.8 winetricks

RUN /bin/bash
