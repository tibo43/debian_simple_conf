#!/bin/bash
########################################
### Tested for Debian 9 with Gnome 3 ###
########################################

# Great tuto to install and configure openbox : https://www.maketecheasier.com/configure-andcustomize-openbox/

# su
# usermod -aG sudo ricebowljr
# killall openbox

sudo apt-get update
sudo apt-get upgrade

# Graphical environment configuration

sudo apt-get install vim hubic build-essential software-properties-common zip terminator gmrun tilda bzip2 redshift wget curl ldap-utils dnsutils -y

echo "Choose /usr/bin/vim/basic, or die"
sudo update-alternatives --config editor

cp config/autostart/*.desktop ~/.config/autostart/
cp config/redshift.conf ~/.config/
cp .vimrc ~/

# Installation and configuration of other softwares

cd
mkdir -p ~/apps
mkdir -p ~/apps/deb

# Firefox
cd ~/apps
wget -O 'firefox-54.0a2.en-US.linux-x86_64.tar.bz2' 'https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=linux64&lang=en-US'
cd /opt
tar xjf firefox-54.0a2.en-US.linux-x86_64.tar.bz2
sudo ln -s /opt/firefox/firefox /usr/bin/firefox

# Cryptomator
cd ~/apps/deb
wget -O 'cryptomator-1.2.3-amd64.deb' 'https://bintray.com/cryptomator/cryptomator-deb/download_file?file_path=cryptomator-1.2.3-amd64.deb'
sudo dpkg -i cryptomator-1.2.3-amd64.deb

# Atom graphical text editor
cd ~/apps/deb
wget -O 'atom-amd64.deb' 'https://atom.io/download/deb'
sudo dpkg -i atom-amd64.deb

# From there, add the new theme in obconf, the obt file is in the openbonx conf directory
wget http://i1.wp.com/abekislevitz.com/wp/wp-content/uploads/2013/10/OwlSpotting3.jpg
