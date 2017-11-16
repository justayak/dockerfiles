#Julians default dev build
FROM ubuntu:16.04

EXPOSE 8888

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /root/miniconda3/bin:$PATH
ENV CPLUS_INCLUDE_PATH /root/miniconda3/include

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    eog \
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

RUN wget "https://github.com/atom/atom/releases/download/v1.16.0/atom-amd64.deb"
RUN apt-get install -y gconf2 gconf-service libnotify4 \
    libnss3 gvfs-bin xdg-utils htop \
    && dpkg --install atom-amd64.deb

# = gui =
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y x11-apps git gitk wget

CMD ["/bin/bash"]
