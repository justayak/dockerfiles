# BioTracker @FU-Berlin
FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractive

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
    libc++abi-dev

RUN apt-get install -y --no-install-recommends doxygen
RUN apt-get install -y qtcreator

RUN apt-get install -y libzmq-dev

RUN apt-get install -y python-dev
RUN apt-get install -y python3-dev
RUN apt-get install -y python-numpy
RUN apt-get install -y python3-numpy
RUN apt-get install -y python3-setuptools

RUN apt-get install -y libprotobuf-dev
RUN apt-get install -y python-protobuf
RUN apt-get install -y protobuf-compiler

RUN apt-get install -y build-essential cmake git pkg-config
RUN apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install -y libatlas-base-dev gfortran python3-pip
RUN pip3 install numpy

RUN git clone https://github.com/Itseez/opencv.git && mkdir opencv/build
RUN cd opencv/build && cmake -DBUILD_TIFF=ON -DBUILD_opencv_java=ON \
    -DWITH_CUDA=OFF -DENABLE_AVX=ON -DWITH_OPENGL=ON -DWITH_OPENCL=OFF \
    -DWITH_IPP=ON -DWITH_TBB=ON -DWITH_EIGEN=ON -DWITH_V4L=ON \
    -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DCMAKE_BUILD_TYPE=RELEASE \
    -DCMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
    -DPYTHON3_EXECUTABLE=$(which python3) \
    -DPYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc;    print(get_python_inc())") \
    -DPYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib;  print(get_python_lib())") .. \
    && make -j4 \
    && make install

RUN git clone https://github.com/amix/vimrc.git ~/.vim_runtime && \
    sh ~/.vim_runtime/install_awesome_vimrc.sh

RUN apt-get install -y htop
