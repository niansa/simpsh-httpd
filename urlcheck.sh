#! /bin/bash

# Blockiere Versuche, das restliche Dateisystem zu lesen
if [ "$URL" = "*..*" ]; then
	export URL='/'
	export FILE="$FILES"
fi

# Verhindere "/"-bug
if [ -d "$FILE" -a "$FILE" != "*/" ]; then
	export URL="$URL"'/'
	export FILE="$FILE"'/'
fi
