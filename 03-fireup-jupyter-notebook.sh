#!/bin/bash

echo Running docker-compose up
sudo docker-compose up -d

echo Grabbing access token from docker logs
sudo docker logs syn-notebook |grep NotebookApp.*token | grep token
