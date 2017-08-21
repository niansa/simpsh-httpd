#! /bin/bash

# Initalisiere Variablen
. ./init.sh

# Lese configdatei
. ./config.sh

# Lese HTTP-Anfrage
. ./readrequest.sh

# Und vieles andere...
. ./urlcheck.sh

# Wenn das Dokument schon fertig ist, dann den folgenden Schritt überspringen
if [ "$DONE" != "true" ]; then
	# Schreibe fertiges HTML-Dokument
	. ./sendfile.sh
fi

# Verwende unix2dos auf das Dokument...
unix2dos $OUTFILE &> /dev/null

# Gebe fertiges HTML-Dokument aus
cat $OUTFILE
