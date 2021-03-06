# BioTracker @FU-Berlin
FROM justayak/dev

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'cabbage'

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
    libc++abi-dev \
    wget \
    libfontconfig1


RUN apt-get install -y python-dev
RUN apt-get install -y python3-dev
RUN apt-get install -y python-numpy
RUN apt-get install -y python3-numpy
RUN apt-get install -y python3-setuptools
RUN apt-get install -y astyle

RUN easy_install3 pip

# install opencv python
RUN apt-get install -y build-essential cmake git pkg-config
RUN apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install -y libatlas-base-dev gfortran

RUN wget http://download.qt.io/official_releases/qt/5.9/5.9.2/qt-opensource-linux-x64-5.9.2.run
RUN chmod +x qt-opensource-linux-x64-5.9.2.run

RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh 


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
    unicodecsv \
    zlib 

RUN conda update conda & conda update --all 

#RUN cd opencv/build/ && cmake -DBUILD_TIFF=ON -DBUILD_opencv_java=OFF \ 
#    -DOPENCV_EXTRA_MODULES_PATH=/opencv_contrib/modules \
#    -DWITH_CUDA=OFF -DENABLE_AVX=ON -DWITH_OPENGL=ON -DWITH_OPENCL=ON \
#    -DWITH_IPP=ON -DWITH_TBB=ON -DWITH_EIGEN=ON -DWITH_V4L=ON \
#    -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DCMAKE_BUILD_TYPE=RELEASE \
#    -DCMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
#    -DPYTHON3_EXECUTABLE=$(which python3) \
#    -DPYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
#    -DPYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") .. \
#    && make -j4 \
#    && make install

RUN git clone https://github.com/amix/vimrc.git ~/.vim_runtime
RUN sh ~/.vim_runtime/install_awesome_vimrc.sh

# gurobi
#COPY gurobi7.5.1_linux64.tar.gz /opt/gurobi7.5.1_linux64.tar.gz
#RUN cd /opt && tar xvfz gurobi7.5.1_linux64.tar.gz

#ENV GUROBI_HOME /opt/gurobi751/linux64
#ENV PATH ${PATH}:${GUROBI_HOME}/bin:/opt/Qt5.9.2/Tools/QtCreator/bin
#ENV LD_LIBRARY_PATH ${GUROBI_HOME}/lib

# gurobi needs an old gcc...
#RUN apt-get install -y g++-4.8
# gurobi end

#RUN cd /home && git clone https://github.com/justayak/cabbage.git

# install atom
RUN wget "https://github.com/atom/atom/releases/download/v1.21.2/atom-amd64.deb"
RUN apt-get install -y libnotify4
RUN apt-get install -y libnss3 gvfs-bin xdg-utils htop
RUN apt-get install -y gconf-service gconf2
RUN dpkg --install atom-amd64.deb

RUN rm atom-amd64.deb
RUN apt-get install -y libasound2
# atom end

RUN apt-get install -y python-dev python3-dev libxml2-dev libxslt-dev
ENV CPLUS_INCLUDE_PATH ${CPLUS_INCLUDE_PATH}:/usr/include/python3.5


RUN jupyter notebook --generate-config --allow-root
RUN echo "c.NotebookApp.ip = '*'" >> ~/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py

COPY set_jupyter_pw.py /set_jupyter_pw.py
RUN python set_jupyter_pw.py

COPY run_ipnb.sh /home/run_ipnb.sh

RUN chmod +x /home/run_ipnb.sh

RUN apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler

# ------------- CABBAGE

RUN pip install git+https://github.com/justayak/pak.git
RUN pip install git+https://github.com/justayak/cselect.git
RUN pip install git+https://github.com/justayak/pppr.git

RUN apt-get install -y zip unzip

RUN pip install --upgrade tensorflow
RUN conda install keras

RUN cd /home && git clone --recursive https://github.com/justayak/cabbage.git
