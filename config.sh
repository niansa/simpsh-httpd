#! /bin/bash

# Wo ist der Webroot (Hauptverzeichniss)?
export FILES="/var/www/html"

# Wie soll der Titel der Dateiliste sein, die aufgerufene URL ist in $URL enthalten.
export HTMLTITLE="Datei: $URL"

# Wo soll das Fertige HTML-Dokument gespeichert werden? Die Variable $HTMLFILEID muss enthalten sein!
export HTMLFILE="/tmp/simpsh-html.${HTMLFILEID}.html"

# Welcher Content-Type soll bei einer Unbekannten Datei gesendet werden?
export DEFAULTCONTENT="text/html"

# Port zum lauschen (Falls start-socat.sh als startscript verwendet wird)
export PORT=8888

# Wie heisst die Webseite (URL des obersten Verzeichnis)?
export WEBSITE="http://localhost:$PORT"
