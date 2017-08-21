#! /bin/bash

status="$URL"

# Dynamisches HTML
echo '<html>
	<head>
		<title>'"${HTMLTITLE}"'</title>
	</head>
	<body>
		<p>'"$status"'</p>
		<h2>Directory list:</h2><br />
		<a href="../">..</a><br />' >> $OUTFILE
for i in $( ls "${FILE}" ); do
	echo '		<a href="./'"${i}"'">'"${i}"'</a><br />' >> $OUTFILE
done

# Statisches HTML
echo '	</body>
</html>' >> $OUTFILE
