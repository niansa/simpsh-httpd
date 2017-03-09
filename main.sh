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

# Gebe fertiges HTML-Dokument aus
cat $HTMLFILE
