#!/bin/bash

echo Running docker-compose up
sudo docker-compose up -d

echo Waiting a few seconds to allow the container to boot far enough for next step
sleep 3

echo Grabbing access token from docker logs
sudo docker logs syn-notebook |grep NotebookApp.*token | grep token
