#Julians default dev build
FROM ubuntu:15.10
EXPOSE 80
ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	wget \
	tmux \
	vim \
	curl \
	php5-common php5-cli php5-fpm \
	php5-GD \
	php5-curl \
	php5-sqlite3 \
	apache2-utils \
	sqlite3 \
	libsqlite3-dev 

RUN apt-get install -y nginx

#RUN wget -nv https://download.owncloud.org/download/repositories/stable/Ubuntu_15.10/Release.key -O Release.key && apt-key add - < Release.key

#RUN sh -c "echo 'deb http://download.owncloud.org/download/repositories/stable/Ubuntu_15.10/ /' >> /etc/apt/sources.list.d/owncloud.list" && apt-get update && apt-get install -y owncloud

#COPY permissions.sh /permissions.sh
#RUN sh permissions.sh


COPY setup-owncloud.php /var/www/html/owncloud.php
COPY services.sh /services.sh
COPY default /etc/nginx/sites-available/default
#COPY default /etc/nginx/sites-enabled/default

#CMD ["/bin/bash", "services.sh"]
CMD ["/bin/bash"]
