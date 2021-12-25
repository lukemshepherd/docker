FROM jupyter/minimal-notebook 
#https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html

RUN conda install mamba -n base -c conda-forge

COPY environment.yml /environment.yml

RUN mamba env update -f /environment.yml 

# RUN pip install uk-covid19 
#some pip packages don't install well from the environment.yml 

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]