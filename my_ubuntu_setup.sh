#!/bin/bash
# Amrit's Development Machine Setup on Ubuntu
# Author : Amrit Man Shrestha
#
# set software sources to server for united states
#
# For other software:
## PDF Mod from software center
## shutter from software center
## kazam from software center
## install unity tweak tool from software center

sudo apt-get update

# Installing build essentials
sudo apt-get install -y build-essential libssl-dev

# PHP and Composer
sudo apt-get install -y language-pack-en-base
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y nginx mcrypt
sudo apt-get install -y php7.3 php7.3-xml php7.3-mbstring php7.3-pgsql php7.3-mysql php7.3-json php7.3-curl php7.3-cli php7.3-common php7.3-gd libapache2-mod-php7.3 php7.3-zip
sudo service php7.3-fpm restart
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# PHP-CS-FIXER
sudo wget https://cs.symfony.com/download/php-cs-fixer-v2.phar -O /usr/local/bin/php-cs-fixer
sudo chmod a+x /usr/local/bin/php-cs-fixer


# Nodejs and NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.profile
nvm install node
sudo nvm use
nvm use node
node -v

#nodemon
sudo npm install -g nodemon
sudo npm install -g loopback-cli

# Forever to run nodejs scripts forever
sudo npm install forever -g

# Git - a version control system
sudo apt-get update
sudo apt-get install -y git xclip

# Gulp - an automated task runner
sudo npm install -g gulp-cli

# Vim, Curl, Python - Some random useful stuff
sudo apt-get install -y vim curl software-properties-common
sudo apt-get install -y python-dev, python-pip
sudo apt-get install -y libkrb5-dev

# Installing JDK and JRE
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk

# Gimp Image Editor
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# Archive Extractors
sudo apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

# FileZilla - a FTP client
sudo apt-get install -y filezilla

# TLP - saves battery when Ubuntu is installed on Laptops
sudo apt-get remove laptop-mode-tools
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install -y tlp tlp-rdw smartmontools ethtool
sudo tlp start
sudo tlp stat

# Sticky Notes
sudo apt-get install -y xpad

# KVM acceleration and cpu checker
sudo apt-get install -y cpu-checker
sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get install -y virt-manager
sudo apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# RPM and alien - sometimes used to install software packages
# sudo apt-get install -y rpm
# sudo apt-get install -y alien dpkg-dev debhelper

# Zsh with syntax highlighting
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# manually edit ~/.zshrc and update: plugins=(zsh-autosuggestions)

touch ~/.bash_alias
echo "source $HOME/.bash_alias"  >> "$HOME/.zshrc"

# Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
# Docker-compose
sudo pip install docker-compose

# Docker Mysql image
git clone https://github.com/amritms/docker-multi-project-mysql.git ~/Projects/mysql

# Docker Postgres image

# Sublime Text 
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text

# Yaru - Comuunity Theme
sudo snap install communitheme


# Youtube downloader
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# Wallpaper changer
sudo add-apt-repository ppa:peterlevi/ppa
sudo apt-get update
sudo apt install -y variety variety-slideshow

## VirtualBox
sudo apt-get install build-essential gcc make perl dkms
wget https://download.virtualbox.org/virtualbox/6.0.8/virtualbox-6.0_6.0.8-130520~Ubuntu~bionic_amd64.deb
sudo dpkg -i virtualbox-6.0_6.0.8-130520~Ubuntu~bionic_amd64.deb
sudo apt-get -f install


# install snaps
sudo snap install vlc postman simplenoteopera
sudo snap install phpstorm --classic
