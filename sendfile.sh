#! /bin/bash

# Überprüfe: Muss eine Dateiliste ausgegeben werden? Ist es ein PHP-script?
if [[ "$FILE" == *.php ]]; then
	CONTENTTYPE="text/html"
	. ./httpheaders.sh
	php "$FILE" >> $OUTFILE
elif [ -f "${FILE}" ]; then
	CONTENTTYPE="$DEFAULTCONTENTTYPE"
	. ./httpheaders.sh
	cat "${FILE}" >> ${OUTFILE}
else
	CONTENTTYPE="text/html"
	. ./httpheaders.sh
	. ./filelist.sh
fi
