# Sourcelists for Debian Wheezy

## Tools
```bash
   apt-get install curl wget rsync git tig git-core tmux vim
````
## MySQL 5.6.23
```bash
   deb http://repo.mysql.com/apt/debian/ wheezy mysql-5.6                          
   deb-src http://repo.mysql.com/apt/debian/ wheezy mysql-5.6 
```
## PHP 5.6.5
```bash
   deb http://packages.dotdeb.org wheezy-php55 all                                 
   deb-src http://packages.dotdeb.org wheezy-php55 all                             
```
## Flash player 

```bash
   deb ftp://ftp.debian.org/debian stable main contrib non-free #sudo apt-get install flashplugin-nonfree
```
## Nodejs
```bash
   sudo apt-get update
   sudo apt-get upgrade
   sudo apt-get install gcc cpp g++ automake1.9 autoconf libtool flex bison python-software-properties

   cd /usr/local/src
   wget http://nodejs.org/dist/node-latest.tar.gz
   tar zxvf node-latest.tar.gz
   cd node-v0.1*
   ./configure
   make
   sudo make install
```
# apt-get-install
Useful and basic apt package list
```bash
   sudo su
   apt-get update & upgrade
```
# Basic tools
```bash
   apt-get install mutt
   apt-get install calcurse
   apt-get install lynx elinks
```
# Server
```bash   
   apt-get install nginx 
   apt-get install php5-fpm php5-mcrypt php5-cli php5-mysql 
   apt-get install mysql-server
```
# Transfer
apt-get install curl
apt-get install wget
apt-get install rsync
apt-get install git tig git-core
apt-get install lftp

# Hardware
apt-get install powertop

# Test
apt-get install seige

# Monitoring
apt-get install dstat
apt-get install htop
apt-get install iftop
apt-get install speedometer

# Log
apt-get install multitail
 
# Usibility
apt-get install tmux
apt-get install tree
apt-get install mc
apt-get install qalc

# Text edit
apt-get install vim vifm ranger
apt-get install sc

# Code Tools
apt-get install cloc 

# Funny
apt-get install sl cmatrix cowsay

# Special Links
http://www.tecmint.com/useful-basic-commands-of-apt-get-and-apt-cache-for-package-management/
 
# Lib6c for debian wheezy
echo "deb http://ftp.debian.org/debian sid main" >> /etc/apt/sources.list
apt-get update
apt-get -t sid install libc6 libc6-dev libc6-dbg
Please remember to hash out sid main from your sources list. /etc/apt/sources.list
