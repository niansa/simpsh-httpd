# simpsh-httpd

An usable bash-httpserver with easy configuration and PHP.


### Installation as package
1. Build package: `cd ; curl https://raw.githubusercontent.com/niansa/simpsh-httpd/master/mkdeb.sh | bash -`
2. Install package: `sudo apt install bash socat dos2unix && sudo dpkg --install ./simpsh-httpd.deb`
3. Edit /etc/config.sh:
 * `FILES` Here is the webroot (homefolder for the website).
 * `HTMLTITLE` This is the title for the filelist.
 * `OUTFILE` The finished Document will saved here. ${OUTFILEID} must be included!
 * `DEFAULTCONTENTTYPE` This Content-Type send the Server, if the requested File isn't a folder or phpfile.
 * `PORT` This port will used for listening.
 * `WEBSITE` This is the URL of the website (Example: "http://localhost:$PORT")
 * `ERROR404` This is the error page 404
 * `ERROR403` This is the error page 403
4. Set permissions: `sudo /usr/share/simpsh-httpd/setowner.sh`
5. Start simpsh-httpd: `simpsh-httpd-socat -d`


### Installation

1. Install following packages: `bash socat dos2unix`
2. Download simpsh-httpd:
 * `$ cd ~`
 * `$ git clone https://github.com/niansa/simpsh-httpd.git`
 * `$ cd ./simpsh-httpd`
3. Edit config.sh:
 * `FILES` Here is the webroot (homefolder for the website).
 * `HTMLTITLE` This is the title for the filelist.
 * `OUTFILE` The finished Document will saved here. ${OUTFILEID} must be included!
 * `DEFAULTCONTENTTYPE` This Content-Type send the Server, if the requested File isn't a folder or phpfile.
 * `PORT` This port will used for listening.
 * `WEBSITE` This is the URL of the website (Example: "http://localhost:$PORT")
 * `ERROR404` This is the error page 404
 * `ERROR403` This is the error page 403
4. Make all files executable
 * `chmod -R a+x ~/simpsh-httpd`
5. Start simpsh-httpd:
 * `cd ~/simpsh-httpd`
 * `./start-socat.sh -d`
6. Have fun with simpsh-httpd!



Tip: You don't need to restart simpsh-httpd after update/configchange!
