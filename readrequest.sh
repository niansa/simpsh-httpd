#! /bin/bash

# Standard-URL
export URL='/'

# Lese den request
read $request

# Verarbeite den request
URL="${request#GET }"
URL="${URL% HTTP/*}"
export FILE="$FILES$URL"
