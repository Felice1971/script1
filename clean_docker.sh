#!/bin/bash


#Description: clean up docker on server

#Author: Felix
#Date: May 2020


docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)

docker ps -a
docker images


