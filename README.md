# Sourcelists for Debian Wheezy

## Tools
```bash
   apt-get install python3-software-properties
   apt-get install curl wget rsync git tig git-core tmux vim
````
## Databases
```bash
   apt-get install mysql-server mysql-workbench phpmyadmin redis-server
```
## PHP 
```bash
   # PHP
   apt-get install apache2 
   apt-get install php5-fpm php5-mcrypt php5-cli php5-mysql php5-curl
   
   # Composer
   curl -sS https://getcomposer.org/installer | php
   mv composer.phar /usr/local/bin/composer
   
   # Symfony
   sudo curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
   sudo chmod a+x /usr/local/bin/symfony # symfony new my_project_name
```
## Flash player 

```bash
   sudo apt-get install flashplugin-nonfree
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

# Basic tools
```bash
   apt-get install mutt # email client
   apt-get install calcurse # calendar and scheduling application
   apt-get install lynx elinks # browser for cli 
```
# Transfer
```bash
   apt-get install curl wget rsync git tig git-core lftp
```
# Hardware
```bash
   apt-get install powertop 
```
# Test
```bash
   apt-get install seige apache2-utils # stres test
```
# Monitoring
```bash
   apt-get install dstat # vmstat, iostat, ifstat, netstat information > http://dag.wiee.rs/home-made/dstat/
   apt-get install htop
   apt-get install iftop 
   apt-get install speedometer # speedtest graphic on cli
```
# Log
```bash
   apt-get install multitail # watch mutlilog one sreen
```
# Usibility
```bash
   apt-get install tree mc qalc # file tree, file commander, calc connected net
```
# Text edit
```bash
   apt-get install vim vifm ranger # file managers for vim
   apt-get install sc # excel style on cli
```
# Code Tools
```bash
   apt-get install cloc # lines of code
```
# Funny
```bash
   apt-get install sl cmatrix cowsay
```
# Special Links
http://www.tecmint.com/useful-basic-commands-of-apt-get-and-apt-cache-for-package-management/
