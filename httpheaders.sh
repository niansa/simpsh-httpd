#! /bin/bash
echo "$STATUS" >> $OUTFILE
echo 'Date: '"$(date)" >> $OUTFILE
echo 'Server: httpd' >> $OUTFILE
echo 'Content-Type: '"$CONTENTTYPE" >> $OUTFILE
echo '' >> $OUTFILE
