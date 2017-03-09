#! /bin/bash

# Initalisiere Variablen
. ./init.sh

# Lese configdatei
. ./config.sh

# Lese HTTP-Anfrage
. ./readrequest.sh

# Eine kurze sicherheutsüberprüfung...
. ./urlcheck.sh

# Schreibe fertiges HTML-Dokument
. ./writehtml.sh

# Verwende unix2dos auf das Dokument...
unix2dos $HTMLFILE &> /dev/null

# Gebe fertiges Dokument aus
cat $HTMLFILE

# Lösche Dokument
rm -f $HTMLFILE
