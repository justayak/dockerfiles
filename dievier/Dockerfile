#Test stuff for my website
FROM ubuntu:15.10
EXPOSE 8080
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'dievier website'
RUN apt-get update && apt-get install -y \
    git \
    nodejs \
    npm
WORKDIR /home/
RUN git clone https://github.com/DieVier/homepage.git
WORKDIR /home/homepage
RUN npm install
CMD ["nodejs", "/home/homepage/index.js"]
