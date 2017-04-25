# BioTracker @FU-Berlin
FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /root/miniconda3/bin:$PATH
ENV CPLUS_INCLUDE_PATH /root/miniconda3/include:/libigl/include
ENV C_INCLUDE_PATH /libigl/include

RUN apt-get update && apt-get install -y \
    git \
    apt-utils \
    build-essential \
    libgtk2.0-dev \
    cmake \
    cmake-gui \
    libglu1-mesa-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    qt5-default \
    libboost-all-dev \
    libc++abi-dev \
    software-properties-common \
    htop \
    libzmq-dev

RUN apt-get install -y --no-install-recommends doxygen
RUN apt-get install -y qtcreator

RUN apt-get install -y libzmq-dev

RUN apt-get install -y libprotobuf-dev
RUN apt-get install -y python-protobuf
RUN apt-get install -y protobuf-compiler

RUN apt-get install -y build-essential cmake git pkg-config
RUN apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install -y libatlas-base-dev gfortran python3-pip

RUN git clone https://github.com/amix/vimrc.git ~/.vim_runtime && \
    sh ~/.vim_runtime/install_awesome_vimrc.sh

RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

RUN bash Miniconda3-latest-Linux-x86_64.sh -b

RUN conda install -y numpy \
    conda \
    anaconda-client \
    conda-build \
    curl \
    greenlet \
    cython \
    fastcache \
    flask \
    graphviz \
    h5py \
    hdf5 \
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
    tensorflow \
    werkzeug \
    unicodecsv \
    zeromq \
    zlib 

RUN apt-get install -y libgl1-mesa-dev mesa-common-dev

RUN git clone --recursive https://github.com/libigl/libigl.git
