#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u dharshaners -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG dharshaners/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push dharshaners/$IMAGE:$BUILD_TAG
