#! /bin/bash

# Standard-URL
export URL='/'

# Verarbeite den request
URL="${header#GET }"
URL="${URL% HTTP/*}"
export FILE="$FILES$URL"
