#!/usr/bin/env bash

TAG=maven3-jdk17-node18

docker buildx build --push --platform linux/amd64 -t bwajtr/docker-builder-maven-node-chrome:$TAG .

echo "Verify the installed versions and print them to the console"

docker run --rm -it bwajtr/docker-builder-maven-node-chrome:$TAG java --version
docker run --rm -it bwajtr/docker-builder-maven-node-chrome:$TAG javac --version
docker run --rm -it bwajtr/docker-builder-maven-node-chrome:$TAG mvn --version
docker run --rm -it bwajtr/docker-builder-maven-node-chrome:$TAG node --version
docker run --rm -it bwajtr/docker-builder-maven-node-chrome:$TAG npm --version
docker run --rm -it bwajtr/docker-builder-maven-node-chrome:$TAG google-chrome --version
