# Minimal python docker image

This is a minimal python environment from the miniconda base image

## How to install:

`mkdir mini_py`

`cd mini_py`

git pull 

### Build docker image
`docker build -t mini_py .`

*NB the . is not a typo that's specifying that you want to build your image from your current directory* 

### To run Jupyter
`docker run -p 8888:8888 -v /filepath/to/dir/you/want/mounted:/app mini_py`
