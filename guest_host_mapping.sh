#!/bin/bash
HOSTNAME=$(hostname)
HOST_IP=$(ip route | awk '/docker/ { print $NF }')
docker run -e HOST=$HOSTNAME -e HOST_PORT=tcp://$HOST_IP:8000 mycontainer