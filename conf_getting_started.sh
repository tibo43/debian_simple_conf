#!/bin/bash
########################################
### Tested for Debian 9 with Gnome 3 ###
########################################

# Fork from repo https://github.com/ricebowljr/debian_simple_conf.git
if [ `whoami` = root ]
then
  echo "ERREUR - Ce script ne doit pas être exécuté par root."
  exit 1
fi

sudo apt-get update
sudo apt-get upgrade -y

## Give rights on scripts
sudo chmod +x base_utils.sh
sudo chmod -R +x ./scripts

## Page up and down to search in history commands
sudo sed --in-place -e 's/#"\\e\[5~": history-search-backward/"\\e\[5~": history-search-backward/g' /etc/inputrc
sudo sed --in-place -e 's/#"\\e\[6~": history-search-forward/"\\e\[6~": history-search-forward/g' /etc/inputrc

./base_utils.sh
for script in ./scripts/*.sh;	do
		sh $script;
		sleep 1;
done

exit 0
