#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo 'simpsh-httpd  Copyright (C) 2018  niansa
This program comes with ABSOLUTELY NO WARRANTY; for details read "'"$(pwd)/LICENSE.md"'".
This is free software, and you are welcome to redistribute it under certain conditions; read "'"$(pwd)/LICENSE.md"'" for details.
'

. $DIR/config.sh
echo "Listening at Port $PORT"
if [ "$1" = "-d" -o "$1" = "--daemon" ]; then
  setsid socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh" > /dev/null 2>&1 &
else
  socat TCP-LISTEN:$PORT,reuseaddr,fork SYSTEM:"./main.sh"
fi
