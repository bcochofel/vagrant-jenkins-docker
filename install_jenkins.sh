#!/bin/bash

DOCKER_IMG="jenkins:lst-custom"

# install tools
sudo apt install curl wget jq

# create container from Dockerfile
cd /vagrant
docker build -t ${DOCKER_IMG} .

# run custom container
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home ${DOCKER_IMG}

exit 0
