#! /bin/bash

echo 'simpsh-httpd  Copyright (C) 2018  niansa
This program comes with ABSOLUTELY NO WARRANTY; for details read "'"$(pwd)/LICENSE"'".
This is free software, and you are welcome to redistribute it under certain conditions; read "'"$(pwd)/LICENSE"'" for details.
'

if [ -f ./config.sh ]; then
  echo "Configuration file missing!!!"
  exit 1
fi

. ./config.sh
echo "Listening at Port $PORT"
if [ "$1" = "-d" -o "$1" = "--daemon" ]; then
  setsid socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh" > /dev/null 2>&1 &
else
  socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh"
fi
