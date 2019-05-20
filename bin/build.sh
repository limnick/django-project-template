#!/bin/sh
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
source $BASE_DIR/bin/env.sh

docker build -f "$DOCKERFILE_DIR/django.Dockerfile" -t "${DJANGO_IMG_TAG}" "${BASE_DIR}"
docker build -f "$DOCKERFILE_DIR/webpack.Dockerfile" -t "${WEB_BUILD_IMG_TAG}" "${BASE_DIR}"
