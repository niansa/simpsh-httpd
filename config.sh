#! /bin/bash

# Wo ist der Webroot (Hauptverzeichniss)?
export FILES="/var/www/html"

# Wie soll der Titel der Dateiliste sein, die aufgerufene URL ist in $URL enthalten.
export HTMLTITLE="Datei: $URL"

# Wo soll das Fertige HTML-Dokument gespeichert werden? Die Variable $OUTFILEID muss enthalten sein!
export OUTFILE="/tmp/simpsh-html.${OUTFILEID}.html"

# Welcher Content-Type soll bei einem Unbekannten Dateityp gesendet werden?
export DEFAULTCONTENTTYPE="text/html"

# Port zum lauschen (Falls start-socat.sh als startscript verwendet wird)
export PORT=8888

# Wie heisst die Webseite (URL des obersten Verzeichnis)?
export WEBSITE="http://localhost:$PORT"
