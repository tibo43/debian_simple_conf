#!/bin/sh

LIST='build-essential software-properties-common zip gmrun bzip2 wget curl ldap-utils dnsutils apt-transport-https htop iotop gnupg2 ca-certificates rsync gconf2 gconf-service'

# Fonction pour vérifier l'état de la commande précédente
check() {
  if [ $? = 0 ] ; then
    echo "\nInstallation OK."
  else
      echo "\nErreur lors de l'installation."
  fi
}

git config --global user.email "fabre.thibaut@gmail.com"
for item in $LIST; do
  echo "\n[INFO] Installation de $item ..."
  sudo apt-get install -y $item 1> /dev/null
  check
done

exit 0
