FROM continuumio/miniconda3

LABEL maintainer="Luke Shepherd: l.m.shepherd@outlook.com"

WORKDIR /app

RUN conda update conda -y \ 
    && conda install -y --quiet \
    'jupyterlab' \
    'numpy'\
    'scikit-image' \
    'scikit-learn' \
    'seaborn' \ 
    'pathlib'\
    && conda clean --yes --all

EXPOSE 8888

VOLUME /app

CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
