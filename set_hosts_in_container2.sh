#!/bin/bash

SED="$(which sed)"
NETSTAT="$(which netstat)"
GREP="$(which grep)"
AWK="$(which awk)"
CAT="$(which cat)"


$SED '/dockerhost$/d' /etc/hosts > /etc/hosts.tmp
DOCKERHOST="$($NETSTAT -nr | $GREP '^0\.0\.0\.0' | $AWK '{print $2}')"

echo "$DOCKERHOST dockerhost" >> /etc/hosts.tmp

$CAT /etc/hosts.tmp > /etc/hosts

rm -rf /etc/hosts.tmp