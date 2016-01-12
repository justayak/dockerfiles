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
    python3-dev \
    libgtk2.0-dev \
    libatlas-base-dev \
    gfortran \
    tmux

RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    git clone https://github.com/Itseez/opencv.git && mkdir opencv/build && \
    git clone https://github.com/Itseez/opencv_contrib.git

RUN cd opencv && git checkout 3.1.0
RUN cd opencv_contrib && git checkout 3.1.0

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

#    -D PYTHON3_PACKAGES_PATH=/root/minoconda3/bin \
#    -D PYTHON3_LIBRARY=/root/miniconda3/lib/libpython5m.so.1.0 \
#    -D PYTHON3_INCLUDE_DIR=/root/minoconda3/include \

RUN cd opencv/build/ && cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D PYTHON3_LIBRARY=/root/miniconda3/lib/libpython3.5m.so \
    -D PYTHON3_PACKAGES_PATH=/root/minoconda3/lib/python3.5/site-packages \
    -D PYTHON3_INCLUDE_DIR=/root/minoconda3/include/python3.5m \
    -D PYTHON3_NUMPY_INCLUDE_DIRS=/root/miniconda3/lib/python3.5/site-packages/numpy/core/include \
    -D OPENCV_EXTRA_MODULES_PATH=/opencv_contrib/modules \
    -D INSTALL_C_EXAMPLES=OFF .. && \
    make -j4 && \
    make install && \
    ldconfig

CMD ["/bin/bash"]
