# simpsh-httpd

An usable bash-httpserver with easy configuration and PHP.


### Installation

1. Install following packages: `bash socat dos2unix`
2. Download simpsh-httpd:
 * `$ cd ~`
 * `$ git clone https://github.com/niansa/simpsh-httpd.git`
 * `$ cd ./simpsh-httpd`
3. Edit config.sh:
 * `FILES` Here is the webroot (homefolder for the website).
 * `HTMLTITLE` This is the title for the filelist.
 * `HTMLFILE` The finished Document will saved here. ${HTMLFILEID} must be included!
 * `DEFAULTCONTENT` This Content-Type send the Server, if the requested File isn't a folder or phpfile.
 * `PORT` This port will used for listening.
 * `WEBSITE` This is the URL of the Website (Example: "http://localhost:$PORT")
4. Make all files executable
 * `chmod ~/simpsh-httpd/* +x`
5. Start simpsh-httpd:
 * `cd ~/simpsh-httpd`
 * `./start-socat.sh`
6. Have fun with simpsh-httpd!
