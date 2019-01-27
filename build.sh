#!/bin/bash -e

FILE_NAME=Dockerfile
REGISTRY=local.registry
IMAGE="fdata-rest"

docker rmi $REGISTRY/$IMAGE || true
docker rmi $IMAGE || true

docker build --no-cache -t $IMAGE -f $FILE_NAME .
docker tag $IMAGE $REGISTRY/$IMAGE
