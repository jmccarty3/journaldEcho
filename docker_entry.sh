#!/bin/sh

OPTIONS=${@:-follow}
hostip=$(ip route show | awk '/default/ {print $3}')

COMMAND="http://$hostip:$GATEWAY_PORT/entries?$OPTIONS"

echo "Running $COMMAND"
curl $COMMAND
