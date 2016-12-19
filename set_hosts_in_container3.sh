#!/bin/bash

# from https://gist.github.com/dimitrovs/493678fd86c7cdf0c88312d9ddb4906b
# add to entrypoint.sh, or to /etc/rc.local
# to make it exec every time docker container starts up

if [[ -z $(grep dockerhost /etc/hosts) ]]
then
    echo `/sbin/ip route|awk '/default/ { print $3 }'` dockerhost >> /etc/hosts
fi
