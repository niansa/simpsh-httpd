cd ~
git clone https://github.com/niansa/simpsh-httpd.git
chmod +x ./simpsh-httpd/mkpackage.sh
./simpsh-httpd/mkpackage.sh ~/simpsh-httpd/ ~/simpsh-httpd-pkg/
mkdir ~/simpsh-httpd-pkg/DEBIAN
echo 'Package: simpsh-httpd
Version: 1.2.0
Maintainer: nisa/niansa <nisa@bitcoinshell.mooo.com>
Priority: extra
Architecture: all
Depends: bash, socat
Description: An usable bash-httpserver with easy configuration and very simple PHP' > ~/simpsh-httpd-pkg/DEBIAN/control
dpkg -b ~/simpsh-httpd-pkg ~/simpsh-httpd.deb
rm -rf ~/simpsh-httpd-pkg
rm -rf ~/simpsh-httpd
