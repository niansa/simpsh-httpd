echo "Bitte warten... Please wait..."
mkdir "$2"
cd "$2"
mkdir etc
mkdir etc/init.d
mkdir etc/simpsh-httpd
mkdir usr
mkdir usr/bin
mkdir usr/share
cp -r "$1" usr/share/simpsh-httpd
echo 'cd /usr/share/simpsh-httpd
./main.sh' > usr/bin/simpsh-httpd
echo 'cd /usr/share/simpsh-httpd/
./start-socat.sh $@
echo $$ > /run/lock/simpsh-httpd.lock' > usr/bin/simpsh-httpd-socat
mv usr/share/simpsh-httpd/simpsh-httpd.service etc/init.d/simpsh-httpd.sh
mv usr/share/simpsh-httpd/config.sh etc/simpsh-httpd
ln -sf /etc/simpsh-httpd/config.sh usr/share/simpsh-httpd/config.sh
chmod -R a+x .
echo "Fertig! Done!"
