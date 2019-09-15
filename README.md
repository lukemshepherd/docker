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
`docker run -p 8888:8888 -v path/to/mounted/dir:/app mini_py`

or a bit more verbosely...


`docker run \`

`-p 8888:8888 \` * # Port on YOUR machine : Port exposed in docker image*
     
`-v /Users/luke/folder:/app \` * # /Full/path/to/folder/you/want/to/mount : /directory in image*
      
`mini_py` * # docker image name*
