#! /bin/bash

# Blockiere Versuche, das restliche Dateisystem zu lesen
if [[ "$URL" == *..* ]]; then
	export URL='/'
	export FILE="$FILES"
fi

# Verhindere "/"-bug
if [ -d "$FILE" ]; then
	if [[ "$URL" != */ ]]; then
		export ANSWER='HTTP/1.0 302 Moved permanently
Location: '"${WEBSITE}${URL}"'/'
		export CONTENTTYPE="$DEFAULTCONTENTTYPE"
		. ./httpheaders.sh
		export DONE=true
	fi
fi

# Erkenne index.html
if [ -f "${FILE}index.html" ]; then
	export URL="${URL}index.html"
	export FILE="${FILE}index.html"
fi

# Erkenne index.php
if [ -f "${FILE}index.php" ]; then
	export URL="${URL}index.php"
	export FILE="${FILE}index.php"
fi
