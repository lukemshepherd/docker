# Python 3 with Juypter Lab 

Installs (through conda):

- Jupyter lab 


*Requires directory 'py_jupyter'*

*#build the docker image*

docker build -t py_jupyter

*#build dir for dockerfile*

mkdir py_jupyter
  




docker run -p 8888:8888 -v /filepath/to/dir/you/want/mounted:/py_jupyter py_jupyter

