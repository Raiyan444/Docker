#!/bin/bash

echo "**********************************"
echo "*********Building JAR*************"
echo "**********************************"

#docker run --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"

docker run --rm -v ~/workspace/pipeline-docker/java-app/:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
