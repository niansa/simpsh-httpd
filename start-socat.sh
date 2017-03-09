#! /bin/bash

. ./config.sh
socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh" || exit 1
echo "Listening at Port: $PORT"
