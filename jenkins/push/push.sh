#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project-test"

echo "** Logging in ***"
docker login -u mitin20 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG mitin20/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push mitin20/$IMAGE:$BUILD_TAG
