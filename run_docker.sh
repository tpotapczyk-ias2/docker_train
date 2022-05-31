#!/bin/bash

docker build -t test .
docker run --runtime=nvidia -v /home/ubuntu/futurismo/opennmt/scons-pipelines/hu_lstm/data:/data  -t test 
