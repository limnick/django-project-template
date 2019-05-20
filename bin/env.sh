#!/bin/sh
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

BIN_DIR="${BASE_DIR}/bin"
APP_DIR="${BASE_DIR}/app"
WEBAPP_DIR="${BASE_DIR}/app/webapp"
DOCKERFILE_DIR="${BASE_DIR}/dockerfiles"

DJANGO_APP_VER="0.0.1"
DJANGO_IMG_TAG="django_template:$DJANGO_APP_VER"

WEB_BUILD_IMG_TAG="web_build:0.1"

LOCAL_PORT="8888"
WEB_BUILD_PORT="3000"
