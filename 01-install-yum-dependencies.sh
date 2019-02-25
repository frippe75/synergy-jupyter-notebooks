#!/bin/bash

# Docker and docker-compose command
sudo yum install -y epel-release
sudo yum install -y docker docker-compose net-utils

# Enable and start Docker deamon
sudo systemctl enable docker
sudo systemctl start docker

