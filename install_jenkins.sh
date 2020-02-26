#!/bin/bash

# install tools
sudo apt install curl wget jq

# create container from Dockerfile
cd /vagrant
docker build -t jenkins:lts-custom

# run custom container
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins:lts-custom

exit 0
