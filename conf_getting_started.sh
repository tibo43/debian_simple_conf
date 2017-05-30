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

sudo apt-get install vim hubic build-essential software-properties-common zip terminator gmrun tilda bzip2 redshift wget curl ldap-utils dnsutils apt-transport-https

echo "Choose /usr/bin/vim/basic, or die"
sudo update-alternatives --config editor

cp config/autostart/*.desktop ~/.config/autostart/
cp config/redshift.conf ~/.config/
cp .vimrc ~/

# Shortcuts and shits

## Page up and down to search in history commands
sudo sed --in-place -e 's/#"\\e\[5~": history-search-backward/"\\e\[5~": history-search-backward/g' /etc/inputrc
sudo sed --in-place -e 's/#"\\e\[6~": history-search-forward/"\\e\[6~": history-search-forward/g' /etc/inputrc

# Installation and configuration of other softwares

cd
mkdir -p ~/apps
mkdir -p ~/apps/deb

## Firefox
cd ~/apps
wget -O 'firefox-54.0a2.en-US.linux-x86_64.tar.bz2' 'https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=linux64&lang=en-US'
cd /opt
tar xjf firefox-54.0a2.en-US.linux-x86_64.tar.bz2
sudo ln -s /opt/firefox/firefox /usr/bin/firefox

## Cryptomator
cd ~/apps/deb
wget -O 'cryptomator-1.2.3-amd64.deb' 'https://bintray.com/cryptomator/cryptomator-deb/download_file?file_path=cryptomator-1.2.3-amd64.deb'
sudo dpkg -i cryptomator-1.2.3-amd64.deb

## Atom graphical text editor
cd ~/apps/deb
wget -O 'atom-amd64.deb' 'https://atom.io/download/deb'
sudo dpkg -i atom-amd64.deb

## KVM/Qemu
cd
sudo apt-get install qemu-kvm libvirt-clients libvirt-daemon virt-manager

## Docker
sudo apt-get install ca-certificates gnupg2
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable edge"
sudo apt-get update
sudo apt-get install docker-ce
echo "If the message \"Hello world\" is printed in few seconds, that proves that Docker is well installed"
sudo docker run hello-world

## Misc utils
cd
sudo apt-get install openssh ssh-server rsync

# From there, add the new theme in obconf, the obt file is in the openbonx conf directory
wget http://i1.wp.com/abekislevitz.com/wp/wp-content/uploads/2013/10/OwlSpotting3.jpg
