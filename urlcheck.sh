#! /bin/bash

# Überprüfe auf Versuche, das restliche Dateisystem zu lesen
if [ "$URL" = "*..*" ]; then
	export URL='/'
fi
