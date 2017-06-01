#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
  if [ $? = 0 ] ; then
    echo "\nInstallation OK."
    if [ -f /tmp/cryptomator-1.2.3-amd64.deb.deb ] ; then
      rm -f /tmp/cryptomator-1.2.3-amd64.deb.deb
    fi
  else
      echo "\nErreur lors de l'installation."
  fi
}


echo "\n[INFO] Installation de Cryptomator..."
wget -O /tmp/cryptomator-1.2.3-amd64.deb https://bintray.com/cryptomator/cryptomator-deb/download_file?file_path=cryptomator-1.2.3-amd64.deb \
&& sudo dpkg --install /tmp/cryptomator-1.2.3-amd64.deb
check

exit 0
