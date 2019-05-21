#!/bin/sh
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
source $BASE_DIR/bin/env.sh

trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT

set -x
tmux \
  new-session  "docker run -it -v \"${WEBAPP_DIR}:/app\" -p \"$WEB_BUILD_PORT:$WEB_BUILD_PORT\" \"${WEB_BUILD_IMG_TAG}\" ash -il -c 'npm test' ; read" \; \
  split-window "docker run -it -v \"${APP_DIR}:/app\" -p \"$LOCAL_PORT:$LOCAL_PORT\" \"${DJANGO_IMG_TAG}\" ash -il -c './manage.py test' ; read" \; \
  select-layout even-horizontal


