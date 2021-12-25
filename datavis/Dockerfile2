FROM ubuntu

LABEL maintainer="l.m.shepherd@outlook.com"

# Base ubuntu apps
RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         cmake \
         git \
         curl \
         vim \
         ca-certificates \
         python-qt4 \
         libjpeg-dev \
         zip \
         unzip \
         libpng-dev && \
     rm -rf /var/lib/apt/lists/*

# Install miniconda
RUN curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
     chmod +x ~/miniconda.sh && \
     ~/miniconda.sh -b -p /opt/conda && \
     rm ~/miniconda.sh && \
    /opt/conda/bin/conda install conda-build

# Update path
ENV PATH=/opt/conda/bin:$PATH

# Build conda environment from file
COPY enviroment.yml /enviroment.yml

RUN conda env update -f /enviroment.yml

WORKDIR /files

EXPOSE 8888

CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

