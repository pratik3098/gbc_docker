#!/bin/bash 
set -e
### The followiing commands creates and run the docker container

IMAGE_NAME=gbcdocketest/node-ubuntu
## Default version of the app
IMAGE_TAG-=1.0.0

######### To build an image #########
echo "######### Building image for : ${IMAGE_NAME} #########"

docker build -t  gbcdocketest/node-ubuntu -f ./Dockerfile .

echo "######### Successfully built image for $IMAGE_NAME #########"


####### To push the image to the docker hub repo #######


echo "######### Pushing image for: ${IMAGE_NAME} #########"

docker push gbcdocketest/node-ubuntu  

echo "######### Successfully pushed image for $IMAGE_NAME #########"


####### To tag the image with specific version  #######

echo "######### Tagging image:  $IMAGE_NAME --> $IMAGE_NAME:$IMAGE_TAG #########"

docker tag gbcdocketest/node-ubuntu gbcdocketest/node-ubuntu:1.0.0

echo "######### Successfully tagged image:  $IMAGE_NAME --> $IMAGE_NAME:$IMAGE_TAG #########"

docker push gbcdocketest/node-ubuntu:1.0.0



#### Creating a docker network ######
DOCKER_NETWORK=gbc-network
echo "########### Creating volume : $DOCKER_NETWORK ########"

docker network create gbc-network

echo "########### Successfully created the network: $DOCKER_NETWORK ########"



#### Creating a docker volume ######
DOCKER_VOLUME=myvolume
echo "########### Creating volume : $DOCKER_VOLUME ########"

docker volume create myvolume 

echo "########### Successfully created the volume: $DOCKER_VOLUME ########"



##### Running the docker container in the detached mode #####
DOCKER_CONTAINER=nodejs
echo "########### Running container : $DOCKER_CONTAINER ########"

docker run --name nodejs -p 9000:80 --network gbc-network -v myvolume:/usr/src/myvolume -d  gbcdocketest/node-ubuntu

echo "########### Successsfully running container : $DOCKER_CONTAINER ###########"


