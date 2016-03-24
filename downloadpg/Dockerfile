#Test stuff for my website
FROM ubuntu:15.10
EXPOSE 8080
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    git \
    nodejs \
    npm
WORKDIR /home/
RUN git clone https://github.com/justayak/sharepg.git
WORKDIR /home/sharepg
RUN npm install
CMD ["nodejs", "/home/sharepg/main.js"]
