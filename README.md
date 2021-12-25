# Fastai/python docker images
 
Fastai docker image with segmentation packages:
 
   - segmentation-models-pytorch
   - opencv-contrib-python-headless # full openCV install
   - albumentations
   - ttach  # test time augmentation
   
 
## Turning conda environment into a docker image
 
https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
 
`conda activate env_name`
 
`conda env export > environment.yml`
 
## Build docker image
 
`cd docker_dir`
 
`docker build -t docker_image_name .`
 
<!-- *NB the . is not a typo! That's specifying that you want to build your image from your current directory*  -->
 
### To run Jupyter with GPU
 
#### Arch distros
 
Docker has a fun habit of breaking in fun, exiting ways!
 
Your GPU(s) won't be recognized unless you either specify `--device` or pass it as `--privileged`
 
https://github.com/NVIDIA/nvidia-docker/issues/1447
 
`docker run \
   -it \
   --gpus all \
   --device /dev/nvidia0 --device /dev/nvidia-uvm --device /dev/nvidia-uvm-tools --device /dev/nvidiactl \ # needed if you are running arch
   -p 8888:8888 \
   -v $PWD:/home/shep \
   -w /home/shep \
   --shm-size=8gb \ # prevents out of memory error for dataloaders
   fastai-seg"`
 
<!-- ### Tips
 
Trying to de bug a docker file can be a bit hard (especially if you don't really know what you are doing like me)!
 
 
If you comment out your `CMD` line, rebuild your image and then run with an interactive shell - this allows you to move around inside your container so get a sense of what is where. -->

