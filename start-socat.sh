#! /bin/bash

. ./config.sh
echo "Listening at Port: $PORT"
if [ "$1" = "-d" -o "$1" = "--daemon" ]; then
  nohup socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh" > /dev/null 2>&1 &
else
  socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh" || exit 1
fi
