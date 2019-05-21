#!/bin/sh
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
source $BASE_DIR/bin/env.sh

trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT


BUILD_CMD="sphinx-build -b html /app/docs /app/docs/_build"

docker run -it -v "${APP_DIR}:/app" -p "$LOCAL_PORT:$LOCAL_PORT" "${DJANGO_IMG_TAG}" $BUILD_CMD

