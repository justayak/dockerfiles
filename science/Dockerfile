#Julians default dev build
FROM ubuntu:15.10

EXPOSE 8888

ENV DEBIAN_FRONTEND noninteractiv
ENV PATH /root/miniconda3/bin:$PATH

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    firefox \
    git \
    curl \
    vim \
    wget \
    cmake \
    locate \
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
    python-dev \
    python3-dev \
    libpython3-dev \
    libpython3.5-dev \
    libgtk2.0-dev \
    libatlas-base-dev \
    gfortran \
    haskell-platform \
    texlive \
    texlive-latex-extra \
    pandoc \
    tmux

RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    git clone https://github.com/Itseez/opencv.git && mkdir opencv/build

RUN cd opencv && git checkout 3.1.0

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

RUN conda install -y -c https://conda.anaconda.org/omnia keras
RUN conda update conda & conda update --all 

RUN cd opencv/build/ && cmake -DBUILD_TIFF=ON -DBUILD_opencv_java=OFF \ 
    -DWITH_CUDA=OFF -DENABLE_AVX=ON -DWITH_OPENGL=ON -DWITH_OPENCL=ON \
    -DWITH_IPP=ON -DWITH_TBB=ON -DWITH_EIGEN=ON -DWITH_V4L=ON \
    -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DCMAKE_BUILD_TYPE=RELEASE \
    -DCMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
    -DPYTHON3_EXECUTABLE=$(which python3) \
    -DPYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
    -DPYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") .. \
    && make -j4 \
    && make install

COPY run_ipnb.sh /home/run_ipnb.sh

CMD ["/bin/bash"]
#CMD ["etc/bash" "run_ipnb.sh"]
