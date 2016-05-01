#Test stuff for my website
FROM ubuntu:15.10
EXPOSE 8080
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'wedding website'
RUN apt-get update && apt-get install -y \
    git \
    python3-dev \
    python3-setuptools

RUN easy_install3 pip
RUN pip install Flask

COPY DONTADD_wedding /home/wedding
#RUN git clone https://github.com/DieVier/homepage.git
#WORKDIR /home/homepage
#RUN npm install
CMD ["python3", "/home/wedding/web.py"]
