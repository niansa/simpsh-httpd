#! /bin/bash

# Blockiere Versuche, das restliche Dateisystem zu lesen
if [[ "$URL" == *..* ]]; then
	URL='/'
	FILE="$FILES"
fi

# Verhindere "/"-bug
if [ -d "$FILE" ]; then
	if [[ "$URL" != */ ]]; then
		STATUS='HTTP/1.0 302 Moved permanently
Location: '"${WEBSITE}${URL}"'/'
		CONTENTTYPE="$DEFAULTCONTENTTYPE"
		. ./httpheaders.sh
		DONE=true
	fi
fi

# Finde index.html
if [ -f "${FILE}index.html" ]; then
	URL="${URL}index.html"
	FILE="${FILE}index.html"
fi

# Finde index.php
if [ -f "${FILE}index.php" ]; then
	URL="${URL}index.php"
	FILE="${FILE}index.php"
fi

# Antworte 404 Not Found wenn Datei nicht existiert
if [ ! -e "$FILE" ]; then
        STATUS='HTTP/1.0 404 Not Found'
        CONTENTTYPE='text/plain'
	FILE="$ERROR404"
fi

# Antworte 403 Forbidden wenn Datei nicht lesbar ist
if [ ! -e "$FILE" ]; then
        STATUS='HTTP/1.0 403 Forbidden'
        CONTENTTYPE='text/plain'
	FILE="$ERROR403"
fi
