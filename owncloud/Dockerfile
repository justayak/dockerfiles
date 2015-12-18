#Julians default dev build
FROM ubuntu:15.10
EXPOSE 80
ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	wget \
	tmux \
	vim \
	curl \
	php5 \
	sqlite3 \
	libsqlite3-dev \
	nginx

RUN apt-get install -y nginx

#RUN wget -nv https://download.owncloud.org/download/repositories/stable/Ubuntu_15.10/Release.key -O Release.key && apt-key add - < Release.key

#RUN sh -c "echo 'deb http://download.owncloud.org/download/repositories/stable/Ubuntu_15.10/ /' >> /etc/apt/sources.list.d/owncloud.list" && apt-get update && apt-get install -y owncloud

#COPY permissions.sh /permissions.sh
#RUN sh permissions.sh

COPY setup-owncloud.php

CMD ["/bin/bash"]
