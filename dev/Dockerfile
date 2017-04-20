#Julians default dev build
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y x11-apps
RUN apt-get install -y git
RUN apt-get install -y gitk
RUN apt-get install -y wget
RUN apt-get install -y tmux
RUN apt-get install -y vim
RUN apt-get install -y curl

CMD ["/bin/bash"]
