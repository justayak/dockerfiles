FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV LD_LIBRARY_PATH /usr/local/lib

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y \
    apt-utils \
    x11-apps \
    git \
    gitk \
    wget \
    tmux \
    vim \
    vim-gnome \
    curl \
    firefox \
    python3-dev \
    python-dev

RUN apt-get install -y \
    build-essential \
    cmake \
    libgtk2.0-dev \
    pkg-config \
    libavcodec-dev \
    libavformat-dev \
    pkg-config \
    libjpeg8-dev \
    libtiff5-dev \
    libjasper-dev \
    libpng12-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libv4l-dev \
    python-dev \
    python3-dev \
    libpython3-dev \
    libpython3.5-dev \
    libatlas-base-dev \
    gfortran

RUN git config --global user.email "jutanke@googlemail.com"

RUN git clone https://github.com/Itseez/opencv.git

RUN mkdir opencv/build && \
    cd opencv && git checkout 3.2.0



ENV PATH /root/miniconda3/bin:$PATH
ENV CPLUS_INCLUDE_PATH /root/miniconda3/include
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

RUN conda update conda & conda update --all

RUN apt-get install -y python-dev python3-dev

RUN cd opencv/build && cmake -DBUILD_TIFF=ON -DBUILD_opencv_java=OFF \ 
    -DWITH_CUDA=OFF -DENABLE_AVX=ON -DWITH_OPENGL=ON -DWITH_OPENCL=ON \
    -DWITH_IPP=ON -DWITH_TBB=ON -DWITH_EIGEN=ON -DWITH_V4L=ON \
    -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DCMAKE_BUILD_TYPE=RELEASE \
    -DCMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
    -DPYTHON3_EXECUTABLE=$(which python3) \
    -DPYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
    -DPYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") .. \
    && make -j4 && make install

RUN wget "https://github.com/atom/atom/releases/download/v1.16.0/atom-amd64.deb"
RUN apt-get update && apt-get install -y libnotify4 \
    libnss3 gvfs-bin xdg-utils htop \
    && dpkg --install atom-amd64.deb

RUN rm atom-amd64.deb
ENV CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH:/root/miniconda3/lib/python3.6/site-packages/numpy/core/include/numpy

COPY .DONTADDcv2hpp /home/cv2hpp 

RUN apt-get install -y python-numpy && conda install pip
RUN pip install --upgrade pip
RUN pip install virtualenv

RUN apt-get install -y libboost-all-dev
