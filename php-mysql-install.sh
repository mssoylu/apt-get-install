apt install mysql-server

mysql_secure_installation

mysql -u root -p

USE mysql;

UPDATE user set authentication_string=NULL where User='root';

FLUSH privileges;

ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'My-N7w_And.5ecure-P@s5w0rd';

FLUSH privileges;

QUIT

################
# PHP & version change
 
apt install php7.4 php7.4-fpm php7.4-mcrypt php7.4-cli php7.4-mysql php7.4-curl php7.4-xml php7.4-redis php7.4-mbstring

apt install php8.1 php8.1-fpm php8.1-mcrypt php8.1-cli php8.1-mysql php8.1-curl php8.1-xml php8.1-redis php8.1-mbstring

sudo update-alternatives --config php

################
# Alternative 

sudo a2dismod php7.2
sudo a2enmod php8.1
sudo service apache2 restart
