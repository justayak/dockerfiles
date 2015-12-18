FROM ubuntu:15.10
EXPOSE 8080
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    git \
    apt-utils \
    bzip2 \
    curl \
    expect

ADD https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.4.0-Linux-x86_64.sh conda.sh
RUN bash conda.sh
RUN spawn expect script

CMD ["/bin/bash"]    
