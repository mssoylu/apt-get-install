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

)
 
for app in "${apps[@]}"
do
    apt-get install $app -y
done
