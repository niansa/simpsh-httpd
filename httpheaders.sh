#! /bin/bash
if [ "$CONTENTTYPE" = "html" ]; then
	echo 'HTTP/1.1 200 OK' >> $HTMLFILE
	echo 'Date: '"$(date)" >> $HTMLFILE
	echo 'Server: httpd' >> $HTMLFILE
	echo 'Content-Type: text/html' >> $HTMLFILE
	echo '' >> $HTMLFILE
else
	echo 'HTTP/1.1 200 OK' >> $HTMLFILE
	echo 'Date: '"$(date)" >> $HTMLFILE
	echo 'Server: httpd' >> $HTMLFILE
	echo 'Content-Type: '"$CONTENT" >> $HTMLFILE
	echo '' >> $HTMLFILE
fi
