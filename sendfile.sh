#! /bin/bash

# Überprüfe: Muss eine Dateiliste ausgegeben werden? Ist es ein PHP-script?
if [[ "$FILE" == *.php ]]; then
	export ANSWER="HTTP/1.0 200 OK"
	export CONTENTTYPE="text/html"
	. ./httpheaders.sh
	php "$FILE" >> $OUTFILE
elif [ -f "${FILE}" ]; then
	export ANSWER="HTTP/1.0 200 OK"
	export CONTENTTYPE="$DEFAULTCONTENTTYPE"
	. ./httpheaders.sh
	cat "${FILE}" >> ${OUTFILE}
else
	export ANSWER="HTTP/1.0 200 OK"
	export CONTENTTYPE="text/html"
	. ./httpheaders.sh
	. ./filelist.sh
fi
