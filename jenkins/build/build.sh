#!/bin/bash

# COPY JAR to build location
cp java-app/target/*.jar jenkins/build/

echo "********************************"
echo "*******BUILDING IMAGE***********"
echo "********************************"

docker-compose -f jenkins/build/docker-compose-build.yml build


