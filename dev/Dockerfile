# Julians default dev build
FROM ubuntu:15.10

ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update
RUN apt-get install -y x11-apps
RUN apt-get install -y sudo

RUN useradd julian -u 1000 && adduser julian sudo

USER julian

CMD /bin/bash
