apps=(
tmux
geany
vim
giti git-gui tig 
wget rsync ssh lftp
python3-software-properties
tree
apache2
php7.1 php7.1-fpm php7.1-mcrypt php7.1-cli php7.1-mysql php7.1-curl
mysql-server mysql-workbench phpmyadmin
redis-server
flashplugin-nonfree
pidgin
nodejs-legacy
npm
)
 
for app in "${apps[@]}"
do
    apt-get install $app -y
done

commands=(
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer 
curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony
a2enmod rewrite
service apache2 restart
apt-add-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer
npm install -g bower
npm install --global gulp
)

for commandRow in "${commands[@]}"
do
    $commandRow
done
