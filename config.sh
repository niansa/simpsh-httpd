#! /bin/bash

# Wo ist der Webroot (Hauptverzeichniss)?
FILES="/var/www/html/"

# Wie soll der Titel der Dateiliste sein, die aufgerufene URL ist in $URL enthalten.
HTMLTITLE="Datei: $URL"

# Wo soll das Fertige HTML-Dokument gespeichert werden? Die Variable $OUTFILEID muss enthalten sein!
OUTFILE="/tmp/simpsh-html.${OUTFILEID}.html"

# Welcher Content-Type soll bei einem Unbekannten Dateityp gesendet werden?
DEFAULTCONTENTTYPE="text/html"

# Port zum lauschen (Falls start-socat.sh als startscript verwendet wird)
PORT=8888

# Wie heisst die Webseite (URL des obersten Verzeichnis)?
WEBSITE="http://localhost:$PORT"

# Statuscode-Seiten (Müssen html-Dateien sein)
ERROR404="${FILES}/404.html"
ERROR403="${FILES}/403.html"
