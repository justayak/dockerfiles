#Julians default dev build
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
	git \
	cmake \
	build-essential \
	x11-apps \
	wget \
	tmux \
	vim \
	apt-utils \
	nodejs \
	build-essential \
	npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g minimatch
RUN npm install -g node-gyp

CMD ["/bin/bash"]
