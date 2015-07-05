apps=(

tmux
geany
vim
giti git-gui tig 
wget rsync ssh lftp
python3-software-properties
tree
apache2
php5 php5-fpm php5-mcrypt php5-cli php5-mysql php5-curl
mysql-server mysql-workbench phpmyadmin
redis-server
flashplugin-nonfree
pidgin
)
 
for app in "${apps[@]}"
do
    apt-get install $app -y
done

commands=(
 
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer 
)

for commandRow in "${commands[@]}"
do
    $commandRow
done
