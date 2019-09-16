# Python docker images

These are a few of my docker images that I use for my work. The docker file builds the environment from a .yml file so it's easy to make new images from your conda enviroments.

## Turning YOUR conda environment into a docker image

`conda env export > environment.yml`

Replace the environment.yml with your own

*If you are exporting a non base environment you will neet to change `name: ...` of the environment.yml to base*

## Build docker image

`git clone https://github.com/lukemshepherd/docker/base-ds.git`

`cd .../base-ds`

`docker build -t base-ds .`

*NB the . is not a typo! That's specifying that you want to build your image from your current directory* 

### To run Jupyter

`docker run -p 8888:8888 -v path/to/mounted/dir:/files base-ds`

or a bit more verbosely...

`docker run \`

`-p 8888:8888 \` *# Port on YOUR machine : Port exposed in docker image*
     
`-v /Users/luke/folder:/file \` *# /Full/path/to/folder/you/want/to/mount : /directory in image*
      
`base-ds` *# docker image name*

