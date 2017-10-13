# BioTracker @FU-Berlin
FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'initializing BioTracker dev environment'

RUN apt-get update && apt-get install -y \
    git \
    apt-utils \
    build-essential \
    libgtk2.0-dev \
    cmake \
    cmake-gui \
    mesa-common-dev \
    libglu1-mesa-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libopencv-dev \
    libboost-all-dev \
    libc++abi-dev \
    wget \
    libfontconfig1

RUN apt-get install -y --no-install-recommends doxygen

RUN apt-get install -y python-dev
RUN apt-get install -y python3-dev
RUN apt-get install -y python-numpy
RUN apt-get install -y python3-numpy
RUN apt-get install -y python3-setuptools
RUN apt-get install -y astyle

RUN easy_install3 pip
RUN pip install pyzmq


RUN git clone https://github.com/BioroboticsLab/biotracker_core.git /biotracker_core
RUN git clone https://github.com/BioroboticsLab/biotracker_gui.git /biotracker_gui

# install opencv python
RUN apt-get install -y build-essential cmake git pkg-config
RUN apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install -y libatlas-base-dev gfortran

RUN wget http://download.qt.io/official_releases/qt/5.9/5.9.2/qt-opensource-linux-x64-5.9.2.run
RUN chmod +x qt-opensource-linux-x64-5.9.2.run
#RUN bash qt-opensource-linux-x64-5.9.2.run

RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    git clone https://github.com/Itseez/opencv.git && mkdir opencv/build && \
    git clone https://github.com/Itseez/opencv_contrib.git && mkdir opencv_contrib/build

RUN cd opencv && git checkout 3.2.0
RUN cd opencv_contrib && git checkout 3.2.0

RUN bash Miniconda3-latest-Linux-x86_64.sh -b

ENV PATH /root/miniconda3/bin:$PATH
ENV CPLUS_INCLUDE_PATH /root/miniconda3/include

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

RUN cd opencv/build/ && cmake -DBUILD_TIFF=ON -DBUILD_opencv_java=OFF \ 
    -DOPENCV_EXTRA_MODULES_PATH=/opencv_contrib/modules \
    -DWITH_CUDA=OFF -DENABLE_AVX=ON -DWITH_OPENGL=ON -DWITH_OPENCL=ON \
    -DWITH_IPP=ON -DWITH_TBB=ON -DWITH_EIGEN=ON -DWITH_V4L=ON \
    -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DCMAKE_BUILD_TYPE=RELEASE \
    -DCMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
    -DPYTHON3_EXECUTABLE=$(which python3) \
    -DPYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
    -DPYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") .. \
    && make -j4 \
    && make install

RUN git clone https://github.com/amix/vimrc.git ~/.vim_runtime
RUN sh ~/.vim_runtime/install_awesome_vimrc.sh



RUN /bin/bash
