#!/bin/bash 
### The followiing commands creates and run the docker container

IMAGE_NAME=gbc/node-ubuntu
## Default version of the app
IMAGE_TAG-=1.0.0

######### To build an image #########
docker build -t  $IMAGE_NAME   .


####### To push the image to the docker hub repo #######

docker push $IMAGE_NAME  


