#!/bin/bash
JMETER_VERSION="4.0"
JMETER_IMG_TAG="latest"
# Example build line
# --build-arg IMAGE_TIMEZONE="Europe/Amsterdam"
sudo docker build  --build-arg JMETER_VERSION=${JMETER_VERSION} -t "jmeter4:${JMETER_IMG_TAG}" .
