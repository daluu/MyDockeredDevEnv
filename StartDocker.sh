#!/bin/bash
built_docker_file="docker-compose.dev.built.yml"

rm -rf docker-compose.dev.built.yml
export localhost="$(ifconfig en0 inet | grep "inet " | awk -F'[: ]+' '{ print $2 }')"
sed -e "s/\${localhost}/$localhost/" docker-compose.dev.template.yml > $built_docker_file

docker-compose -f $built_docker_file build
docker-compose -f $built_docker_file up
