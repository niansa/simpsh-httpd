# simpsh-httpd

An usable bash-httpserver with easy configuration and PHP.


### Installation

1. Install following packages: bash socat (Debian/Ubuntu: $ sudo apt install bash socat)
2. Download simpsh-httpd:
  * `$ git clone https://github.com/niansa/simpsh-httpd.git`
  * `$ cd ./simpsh-httpd`
3. Edit config.sh:
 * `FILES` Here is the webroot (homefolder for the website)
 * `HTMLTITLE` This is the title for the filelist
 * `HTMLFILE` The finished Document will saved here. ${HTMLFILEID} must be included!
