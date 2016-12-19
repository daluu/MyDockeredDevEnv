# see https://github.com/docker/docker/issues/1143
export DOCKERHOST="$(ifconfig en0 inet | grep "inet " | awk -F'[: ]+' '{ print $2 }')"