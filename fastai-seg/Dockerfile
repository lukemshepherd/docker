FROM fastdotai/fastai

RUN conda install mamba -n base -c conda-forge

COPY enviroment.yml /enviroment.yml

RUN mamba env update -f /enviroment.yml 

EXPOSE 8888

CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

