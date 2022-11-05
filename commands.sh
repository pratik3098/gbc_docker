#!/bin/bash 
set -e
### The followiing commands creates and run the docker container

IMAGE_NAME=gbc/node-ubuntu
## Default version of the app
IMAGE_TAG-=1.0.0

######### To build an image #########
echo "######### Building image for : ${IMAGE_NAME} #########"
docker build -t  $IMAGE_NAME   .

echo "######### Successfully built image for $IMAGE_NAME #########"


####### To push the image to the docker hub repo #######


echo "######### Pushing image for: ${IMAGE_NAME} #########"
docker push $IMAGE_NAME  
echo "######### Successfully pushed image for $IMAGE_NAME #########"


####### To tag the image with specific version  #######

echo "######### Tagging image:  $IMAGE_NAME --> $IMAGE_NAME:$IMAGE_TAG #########"
docker tag $IMAGE_NAME $IMAGE_NAME:$IMAGE_TAG
echo "######### Successfully tagged image:  $IMAGE_NAME --> $IMAGE_NAME:$IMAGE_TAG #########"

docker push $IMAGE_NAME:$IMAGE_TAG
