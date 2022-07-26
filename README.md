**This repo has been deprecated.  Please see our updated [Jupyter](https://github.com/UCSB-PSTAT/jupyter-base) and [RStudio](https://github.com/UCSB-PSTAT/base-rstudio) container image sources instead.**
## Installing Docker for Mac/Win

Follow these instructions:

### Mac:
https://docs.docker.com/docker-for-mac/install/

### Windows:
https://docs.docker.com/docker-for-windows/install/

#### Build command for this docker image:
Docker build --no-cache -t csc-python:latest .

## Persistant storage commands
### (mounting your current working directory to your docker container in Mac and Windows)
#### Run command for Mac users (This command will mount your documents folder within the container)
docker run --rm -it -v $HOME/Documents:/home/jovyan/work -p 8888:8888 -e JUPYTER_ENABLE_LAB=YES csc-python:latest


#### Run command for Windows users (This command will mount your documents folder within the container)
docker run --rm -it -v //c/Users/{username}/Documents:/home/jovyan/work -p 8888:8888 -e JUPYTER_ENABLE_LAB=YES csc-python:lastest
