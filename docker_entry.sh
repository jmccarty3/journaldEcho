#!/bin/sh

OPTIONS="${@:-follow}"
hostip=$(ip route show | awk '/default/ {print $3}')

COMMAND="curl http://$hostip:$GATEWAY_PORT/entries?$OPTIONS"

echo "Running $COMMAND"
eval $COMMAND
