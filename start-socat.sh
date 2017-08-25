#! /bin/bash

. ./config.sh
echo "Listening at Port: $PORT"
socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh" || exit 1

