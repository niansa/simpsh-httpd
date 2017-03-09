#! /bin/bash

# Lese den request
read $header

# Verarbeite den request
URL="${header#GET }"
URL="${URL% HTTP/*}"
export FILE="$FILES$URL"
echo $URL
