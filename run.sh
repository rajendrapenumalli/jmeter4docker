#!/bin/bash
# Run JMeter Docker image with options

NAME="jmeter4"
IMAGE="jmeter4"

# Finally run
sudo docker stop ${NAME} 
sudo docker rm ${NAME} 
sudo docker run --name  ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE}  $@
