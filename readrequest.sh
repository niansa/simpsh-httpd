#! /bin/bash

# Notwendige Variablen definieren
header=' '

# Falls im nächsten Bereich keine Datein ausgewertet werden, bleiben folgende Variablen gesetzt
export URL='/'

# Lese anfrage...
read header

URL="${header#GET }"
URL="${URL% HTTP/*}"
export FILE="$FILES$URL"
