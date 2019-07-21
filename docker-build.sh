#!/bin/sh

REPOSITORY_URI=535233662260.dkr.ecr.eu-central-1.amazonaws.com/bigtwine/ner-tool
COMMIT_HASH=$(git rev-parse HEAD | cut -c 1-7)
IMAGE_TAG=${COMMIT_HASH:=latest}

docker build -t $REPOSITORY_URI:latest .
docker tag $REPOSITORY_URI:latest $REPOSITORY_URI:$IMAGE_TAG

docker push $REPOSITORY_URI:latest
docker push $REPOSITORY_URI:$IMAGE_TAG
