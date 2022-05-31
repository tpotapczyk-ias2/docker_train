#!/bin/bash

docker build -t test .
docker run --runtime=nvidia -v $1:/data  -t test 
