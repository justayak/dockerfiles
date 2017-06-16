#Julians default dev build
FROM ubuntu:16.04

EXPOSE 8888

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /root/miniconda3/bin:$PATH
ENV CPLUS_INCLUDE_PATH /root/miniconda3/include

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
    git clone https://github.com/Itseez/opencv.git && mkdir opencv/build && \
    git clone https://github.com/Itseez/opencv_contrib.git && mkdir opencv_contrib/build

RUN cd opencv && git checkout 3.2.0
RUN cd opencv_contrib && git checkout 3.2.0

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

RUN pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git

RUN conda update conda & conda update --all 

RUN git clone https://github.com/fchollet/keras.git && cd keras git checkout 2.0.3 && \
    python setup.py install



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

COPY run_ipnb.sh /home/run_ipnb.sh

# jupyter password
RUN jupyter notebook --generate-config --allow-root
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
RUN conda install torchvision -c soumith
RUN conda install spyder
RUN apt-get install x11-apps firefox

RUN apt-get install -y zsh
RUN wget http://github.com/sjl/oh-my-zsh/raw/master/tools/install.sh -O - | sh

RUN conda install -y pytorch torchvision -c soumith

CMD ["/bin/bash"]
