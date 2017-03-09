#! /bin/bash

# Blockiere Versuche, das restliche Dateisystem zu lesen
if [[ "$URL" == *..* ]]; then
	export URL='/'
	export FILE="$FILES"
fi

# Verhindere "/"-bug
if [ -d "$FILE" ]; then
if [[ "$URL" != */ ]]; then
	#newURL="$URL"'/'
	#export URL="$newURL"
	#newFILE="$FILE"'/'
	#export FILE="$newFILE"
	echo 'HTTP/1.0 302 Moved permanently
	Location: '"${WEBSITE}${URL}"'/'
fi
fi
