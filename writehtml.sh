#! /bin/bash

# Überprüfe: Ist $FILE ein Verzeichniss und enthält es eine index.* ?
# TODO


# Überprüfe: Datei oder Verzeichniss?
if [[ "$FILE" == *.php ]]; then
	export CONTENTTYPE="html"
	. ./httpheaders.sh
	php "$FILE" >> $HTMLFILE
elif [ -f "${FILE}" ]; then
	export CONTENTTYPE="$DEFAULTCONTENT"
	. ./httpheaders.sh
	cat "${FILE}" >> ${HTMLFILE}
else
	export CONTENTTYPE="html"
	. ./httpheaders.sh
	. ./htmlfilelist.sh
fi
