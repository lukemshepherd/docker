FROM continuumio/miniconda3

LABEL maintainer="Luke Shepherd"

WORKDIR /py_jupyter

COPY . /py_jupyter

# instals packages and removes unused ones
RUN conda install jupyterlab -y && \ 
conda clean -y -all

EXPOSE 8888

VOLUME /py_jupyter

# Run juypter when container launches
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
