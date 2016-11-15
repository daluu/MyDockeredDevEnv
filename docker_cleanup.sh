#!/bin/sh -x

# http://stackoverflow.com/questions/33995276/no-space-left-on-device-while-installing-a-tar-using-docker

# with docker 1.13
#docker system prune

docker stop $(docker ps -a -q) | xargs docker rm
#docker rm $(docker ps -a -q)
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
