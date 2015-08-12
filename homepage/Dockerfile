#Test stuff for my website
FROM ubuntu:15.10
EXPOSE 8080
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'Julians website'
RUN apt-get update && apt-get install -y \
    git \
    nodejs \
    npm
WORKDIR /home/
RUN git clone https://github.com/justayak/ppge.git
WORKDIR /home/ppge
RUN npm install
CMD ["nodejs", "/home/ppge/main.js"]
