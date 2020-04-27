#!/bin/bash

IMAGE="maven-project"

echo "*****Tagging Image********"

docker tag $IMAGE:$BUILD_TAG raiyan/$IMAGE:$BUILD_TAG

echo "*****LOGGING TO DOCKER HUB********"

docker login -u raiyan -p $PASS 

echo "********************************"
echo "*******PUSHING IMAGE************" 
echo "********************************"

docker push raiyan/$IMAGE:$BUILD_TAG
