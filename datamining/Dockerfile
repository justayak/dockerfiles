FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractiv

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential python-dev python-setuptools
RUN apt-get install -y python-numpy python-scipy
RUN apt-get install -y libatlas-dev libatlas3gf-base
RUN apt-get install -y python-pip
RUN apt-get install -y octave
RUN apt-get install -y octave-control octave-image octave-io octave-optim octave-signal octave-statistics

RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv
RUN pip install --upgrade numpy

RUN pip install scikit-learn
