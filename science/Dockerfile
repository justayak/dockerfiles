#Julians default dev build
FROM ubuntu:15.10

EXPOSE 8888

ENV DEBIAN_FRONTEND noninteractiv
ENV PATH /root/miniconda3/bin:$PATH

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git \
    curl \
    vim \
    cmake \
    build-essential \
    pkg-config \
    libjpeg8-dev \
    libtiff5-dev \
    libjasper-dev \
    libpng12-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libv4l-dev \
    libgtk2.0-dev \
    libatlas-base-dev \
    gfortran \
    tmux

RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    git clone https://github.com/Itseez/opencv.git && mkdir opencv/build
RUN bash Miniconda3-latest-Linux-x86_64.sh -b

RUN conda install -y numpy \
    conda \
    conda-build \
    curl \
    greenlet \
    cython \
    fastcache \
    flask \
    h5py \
    hdf5 \
    ipykernel \
    ipython \
    ipython-notebook \
    ipython-qtconsole \
    ipython_genutils \
    jinja2 \
    jpeg \
    jsonschema \
    jupyter \
    jupyter_client \
    jupyter_console \
    jupyter_core \
    libffi \
    libsodium \
    libpng \
    libtiff \
    libxml2 \
    libxslt \
    llvmlite \
    lxml \
    matplotlib \
    mistune \
    notebook \
    nltk \
    nose \
    numba \
    openblas \
    pandas \
    pep8 \
    pyqt \
    pycurl \
    pycosat \
    psutil \
    ptyprocess \
    redis \
    redis-py \
    scikit-image \
    scikit-learn \
    scipy \
    simplegeneric \
    sip \
    sockjs-tornado \
    sqlite \
    sqlalchemy \
    theano \
    werkzeug \
    unicodecsv \
    zeromq \
    zlib


RUN cd opencv/build/ && cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/root/ \
    -D INSTALL_C_EXAMPLES=OFF .. && \
    make -j4 && \
    make install

CMD ["/binEXPOSE 8888/bash"]
