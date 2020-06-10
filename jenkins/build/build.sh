#!/bin/bash

# COPY JAR to build location
WORKSPACE=/var/jenkins_home/workspace/pipeline-docker
cp $WORKSPACE/java-app/target/*.jar $WORKSPACE/jenkins/build/

echo "********************************"
echo "*******BUILDING IMAGE***********"
echo "********************************"

docker-compose -f $WORKSPACE/jenkins/build/docker-compose-build.yml build


