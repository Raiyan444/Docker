#!/bin/bash

echo "maven-project" > /tmp/.auth
echo "$BUILD_TAG" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

scp -i /opt/haider-prod /tmp/.auth root@34.87.166.150:/tmp/.auth
scp -i /opt/haider-prod jenkins/deploy/publish root@34.87.166.150:/root/maven/publish

ssh  -i /opt/haider-prod root@34.87.166.150 "cd maven && ./publish"
