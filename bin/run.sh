#!/bin/sh
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
source $BASE_DIR/bin/env.sh

docker run -it -v "${WEBAPP_DIR}:/app" -p "$WEB_BUILD_PORT:$WEB_BUILD_PORT" "${WEB_BUILD_IMG_TAG}"

#docker run -it -v "${APP_DIR}:/app" -p "$LOCAL_PORT:$LOCAL_PORT" "${DJANGO_IMG_TAG}" "$@"
