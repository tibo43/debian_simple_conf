#/bin/sh

# Great tuto to install and configure openbox : https://www.maketecheasier.com/configure-andcustomize-openbox/

# su
# usermod -aG sudo ricebowljr
# killall openbox

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install  openbox obconf git build-essential software-properties-common zip terminator gmrun tilda nitrogen -y

# Menu conf
sudo apt-get install menu -y
cp /var/lib/openbox/debian-menu.xml ~/.config/openbox/debian-menu.xml
cp /etc/xdg/openbox/menu.xml ~/.config/openbox/menu.xml
cp /etc/xdg/openbox/rc.xml ~/.config/openbox/rc.xml
openbox --reconfigure

sudo apt-get install obmenu -y
obmenu
# At this point, personalize the menu (or not), then close the window

sudo apt-get install tint2 -y
cd ~/.conf
rm -rvf tint2
git clone https://github.com/RiceBowlJr/tint2.git

rm -rvf openbox
git clone https://github.com/RiceBowlJr/openbox.git

wget https://dl.opendesktop.org/api/files/download/id/1485941697/Mistral-Thin-Dark.obt

# From there, add the new theme in obconf, the obt file is in the openbonx conf directory
