#!/bin/bash

# Docker and docker-compose command
yum install -y epel-release
yum install -y docker docker-compose net-utils

# Enable and start Docker deamon
systemctl enable docker
systemctl start docker

