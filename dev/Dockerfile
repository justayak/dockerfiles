#Julians default dev build
FROM ubuntu:15.10

ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update
RUN apt-get upgrade -y
#RUN apt-get install -y lxde-core lxterminal && rm \
#    rm -rf /var/lib/apt/lists/*
#RUN apt-get update
RUN apt-get install -y x11-apps
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y tmux
RUN apt-get install -y vim

CMD /bin/bash

EXPOSE 5901
