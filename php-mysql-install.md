# APACHE & Certbot

apt install apache2 

sudo snap install --classic certbot

sudo certbot --apache

# MYSQL

apt install mysql-server

mysql_secure_installation

mysql -u root -p

USE mysql;

UPDATE user set authentication_string=NULL where User='root';

FLUSH privileges;

ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'My-N7w_And.5ecure-P@s5w0rd';

FLUSH privileges;

QUIT
 
# PHP & version change

sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo apt update

sudo add-apt-repository ppa:ondrej/php
sudo apt-get update 

apt install php7.4 php7.4-fpm php7.4-mcrypt php7.4-cli php7.4-mysql php7.4-curl php7.4-xml php7.4-redis php7.4-mbstring

apt install php8.2 php8.2-mbstring php8.2-gmagick php8.2-mcrypt php8.2-memcache php8.2-uploadprogress php8.2-bcmath php8.2-memcached php8.2-mongodb php8.2-redis php8.2-xdebug php8.2-cli php8.2-mysql php8.2-rrd php8.2-common php8.2-imagick php8.2-oauth php8.2-xml php8.2-curl php8.2-imap php8.2-odbc php8.2-snmp php8.2-xmlrpc php8.2-dba php8.2-opcache php8.2-soap php8.2-xsl php8.2-decimal php8.2-dev php8.2-intl php8.2-pgsql php8.2-sqlite3 php8.2-yaml php8.2-zip php8.2-fpm php8.2-gd 

sudo update-alternatives --config php

apt install phpmyadmin

# NODEJS && NPM

apt install nodejs npm

npm install bower -g

npm install yarn -g
 
# Alternative 

sudo a2dismod php7.2

sudo a2enmod php8.1

sudo service apache2 restart


# Symfony 

curl -sS https://getcomposer.org/installer | php

mv composer.phar /usr/local/bin/composer 

curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony

chmod a+x /usr/local/bin/symfony

a2enmod rewrite

service apache2 restart


# Virtual Host Sample for Symfony5+

```
# /etc/apache2/conf.d/example.com.conf
<VirtualHost *:80>
    ServerName example.com
    ServerAlias www.example.com

    # Uncomment the following line to force Apache to pass the Authorization
    # header to PHP: required for "basic_auth" under PHP-FPM and FastCGI
    #
    # SetEnvIfNoCase ^Authorization$ "(.+)" HTTP_AUTHORIZATION=$1

    <FilesMatch \.php$>
        # when using PHP-FPM as a unix socket
        # SetHandler proxy:unix:/var/run/php/php7.4-fpm.sock|fcgi://dummy
        # when PHP-FPM is configured to use TCP
        # SetHandler proxy:fcgi://127.0.0.1:9000
    </FilesMatch>

    DocumentRoot /var/www/example.com/root/public
    <Directory /var/www/example.com/root/public>
        AllowOverride None
        Require all granted
        FallbackResource /index.php
    </Directory>

    # uncomment the following lines if you install assets as symlinks
    # or run into problems when compiling LESS/Sass/CoffeeScript assets
    # <Directory /var/www/example.com>
    #     Options FollowSymlinks
    # </Directory>

    ErrorLog /var/log/apache2/example_com_error.log
    CustomLog /var/log/apache2/example_com_access.log combined
</VirtualHost>
```
