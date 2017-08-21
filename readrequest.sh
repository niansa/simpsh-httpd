#! /bin/bash

# Lese den request
read header

# Verarbeite den request
URL="${header#GET }"
URL="${URL% HTTP/*}"
FILE="$FILES$URL"
DECODED_FILE=$(printf '%b' "${FILE//%/\\x}")
FILE="$DECODED_FILE"
