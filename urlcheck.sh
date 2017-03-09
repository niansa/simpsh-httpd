#! /bin/bash

# Blockiere Versuche, das restliche Dateisystem zu lesen
if [ "$URL" = "*..*" ]; then
	export URL='/'
	export FILE="$FILES"
fi

# Verhindere "/"-bug
if [ -d "$FILE" -a "$FILE" != "*/" ]; then
	newURL="$URL"'/'
	export URL="$newURL"
	newFILE="$FILE"'/'
	export FILE="$newFILE"
fi
