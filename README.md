# Introduction

A small demo project to reproduce figures  in a notebook

# How to run code

Please install Docker

## Using Docker Compose

### From the web
1. Run `docker-compose up`

### Rebuild locally
1. Run `docker-compose -f docker-compose.local.yml up`

## Using Docker

### From Source code
1. Download this code
1. `docker build -t my-notebook .` Builds the image locally
1. `docker run -it -p 8888:8888 my-notebook` Run a container from locally built image

### From the Web

1. `docker run -it -p 8888:8888 wesleyban/docker_presentation` Run a container from locally built image pushed to the Web

# Using your own data

It is possible to use your own data. To do so you must mount a volume into the container as so:

`docker run -it -p 8888:8888 -v ABSOLUTE_PATH_LOCALLY:/home/jovyan/work/perso wesleyban/docker_presentation`

This command mounts data from ABSOLUTE_PATH_LOCALLY to a folder inside the container at the location /home/jovyan/work/perso

This is useful for getting things in and out of the container, eg. Trying the workflow with your own data or saving results