FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential python-dev python-setuptools
RUN apt-get install -y python-numpy python-scipy
RUN apt-get install -y libatlas-dev libatlas3gf-base
RUN apt-get install -y python-pip

RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv

RUN pip install scikit-learn
#RUN pip install matplotlib


#COPY sample_submission.csv /home/sample_submission.csv
#COPY store.csv /home/store.csv
#COPY test.csv /home/test.csv
#COPY train.csv /home/train.csv

#RUN git clone https://github.com/mairaladeira/rossmann.git /home/rossmann

#RUN update-alternatives --set libblas.so.3 \
#    /usr/lib/atlas-base/libblas.so.3

#RUN update-alternatives --set liblapack.so.3 \
#    /usr/lib/atlas-base/atlas/liblapack.so.3
