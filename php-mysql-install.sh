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

apt install php7.1 php7.1-fpm php7.1-mcrypt php7.1-cli php7.1-mysql php7.1-curl

apt install php7.2 php7.2-fpm php7.2-mcrypt php7.2-cli php7.2-mysql php7.2-curl

apt install php7.4 php7.4-fpm php7.4-mcrypt php7.4-cli php7.4-mysql php7.4-curl

apt install php8.1 php8.1-fpm php8.1-mcrypt php8.1-cli php8.1-mysql php8.1-curl

sudo update-alternatives --config php
