# docker-builder-maven-node-python

This docker image can be used to build and UI test Java based web applications, it contains: java, maven, node, chrome

* https://hub.docker.com/repository/docker/bwajtr/docker-builder-maven-node-chrome
* https://github.com/bwajtr/docker-builder-maven-node-chrome

## Introduction

This project goal is to create a docker image with the following build tools included:

* Eclipse Temurin JDK 17.0.10
* Apache Maven 3.9.6
* Latest version of NodeJS 18
* Latest version of Chrome (for execution of UI tests)

## How-to

Use `build-and-push.sh` to build the image and push it to the docker hub.
The pushed image will contain the latest versions of Node and Chrome.

Use `run.sh` to run the image locally, just to check if everything is working.
