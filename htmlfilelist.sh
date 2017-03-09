#! /bin/bash

status="$URL"

# Statisches HTML
echo '<html>
	<head>
		<title>'"${HTMLTITLE}"'</title>
	</head>
	<body>
		<p>'"$status"'</p>
		<h2>Directory list:</h2><br />
		<a href="'"${WEBSITE}${URL}/../"'">..</a><br />' >> $HTMLFILE

# Erstelle Dateiliste im HTML-Format
for i in $( ls "${FILE}" ); do
	echo '		<a href="'"${WEBSITE}${URL}/${i}"'">'"${i}"'</a><br />' >> $HTMLFILE
done

# Statisches HTML
echo '	</body>
</html>' >> $HTMLFILE
