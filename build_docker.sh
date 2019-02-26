#!/usr/bin/env bash

set -e

# pull to make sure we are not rebuilding for nothing
docker pull cirrusci/flutter:base

docker build --tag oval/flutter:base base
docker build --tag oval/flutter:$FLUTTER_VERSION \
             --tag oval/flutter:latest \
             --build-arg flutter_version=$FLUTTER_VERSION \
             sdk