#Test stuff for my website
FROM ubuntu:16.04
EXPOSE 8080
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'gabriela website'
RUN apt-get update && apt-get install -y \
    git \
    python3

WORKDIR /home/
RUN git clone https://github.com/gabrielahrlr/personal-website.git

WORKDIR /home/personal-website
CMD ["python3", "-m", "http.server", "8080"]
