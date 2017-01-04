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
    lasagne \
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
    tensorflow \
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

# caffe
RUN apt-get install -y \
    libprotobuf-dev \
    libleveldb-dev \
    libsnappy-dev \
    libopencv-dev \
    libhdf5-serial-dev \
    protobuf-compiler
RUN apt-get install -y --no-install-recommends libboost-all-dev
RUN apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev

RUN pip install graphviz

# install torch
RUN apt-get install -y \
   libzmq3-dev libssl-dev python-zmq \
   lua5.3 luarocks

RUN git clone https://github.com/torch/distro.git /root/torch --recursive
RUN cd /root/torch && sed -i 's/sudo //g' install-deps > install-deps && \
    bash install-deps && ./install.sh

#RUN cd /root/torch && bash install-deps
#RUN cd /root/torch && ./install.sh
#RUN git clone https://github.com/torch/distro.git ~/torch --recursive && \
#    cd ~/torch; bash install-deps; && ./install.sh


RUN luarocks install uuid && \
    luarocks install lua-cjson && \
    luarocks install lbase64 && \
    luarocks install lzmq

#RUN luarocks install image
#    luarocks install image && \
#    luarocks install env && \
#    luarocks install luafilesystem && \
#    luarocks install penlight

#RUN git clone https://github.com/facebook/iTorch.git
#RUN cd iTorch && luarocks make

#RUN git clone https://github.com/BVLC/caffe.git && \
#    cd caffe && mkdir build && cd build && \
#    cmake .. 
    

# ==================================================
# ocatave
# ==================================================

#RUN apt-get install -y gnuplot octave
RUN pip install octave_kernel && python -m octave_kernel.install

# install libpgm
RUN git clone https://github.com/CyberPoint/libpgm
COPY p2to3.py /libpgm/p2to3.py
RUN cd libpgm && python p2to3.py
RUN cd libpgm && python setup.py install

# jupyter password
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.ip = '*'" >> ~/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py

COPY set_jupyter_pw.py /set_jupyter_pw.py
RUN python set_jupyter_pw.py


RUN chmod +x /home/run_ipnb.sh

# ==========
# vim config
# =========
RUN git clone https://github.com/amix/vimrc.git ~/.vim_runtime
RUN sh ~/.vim_runtime/install_awesome_vimrc.sh

# ==== install tqdm ====
# pip is run from anaconda folder..
RUN pip install tqdm

CMD ["/bin/bash"]
#CMD ["etc/bash" "run_ipnb.sh"]
