#Julians default dev build
FROM ubuntu:16.04

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
    pandoc \
    libzmq3-dev \
    libssl-dev \
    python-zmq \
    tmux

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

COPY run_ipnb.sh /home/run_ipnb.sh
RUN chmod +x /home/run_ipnb.sh

# install torch
RUN apt-get install -y \
   libzmq3-dev libssl-dev python-zmq \
   lua5.3 luarocks

RUN git clone https://github.com/torch/distro.git /root/torch --recursive
RUN cd /root/torch && sed -i 's/sudo //g' install-deps > install-deps && \
    bash install-deps && ./install.sh

RUN ~/torch/install/bin/luarocks install nn
RUN ~/torch/install/bin/luarocks install image
RUN ~/torch/install/bin/luarocks install uuid
RUN ~/torch/install/bin/luarocks install lua-cjson
RUN ~/torch/install/bin/luarocks install lbase64
RUN ~/torch/install/bin/luarocks install lzmq
RUN ~/torch/install/bin/luarocks install env
RUN ~/torch/install/bin/luarocks install luafilesystem
RUN ~/torch/install/bin/luarocks install luacrypto
RUN ~/torch/install/bin/luarocks install penlight

# itorch
RUN git clone https://github.com/facebook/iTorch.git && cd iTorch && \
	~/torch/install/bin/luarocks make

CMD ["/bin/bash"]
#CMD ["etc/bash" "run_ipnb.sh"]
