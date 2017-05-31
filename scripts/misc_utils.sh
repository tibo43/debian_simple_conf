#!/bin/sh

LIST='openssh-server openssh-client openssl vlc chromium nmap gparted terminator'

# Fonction pour vérifier l'état de la commande précédente
check() {
  if [ $? = 0 ] ; then
    echo "\nInstallation OK."
  else
      echo "\nErreur lors de l'installation."
  fi
}

for item in $LIST; do
  echo "\n[INFO] Installation de $item ..."
  sudo apt-get install -y $item 1> /dev/null
  check
done

exit 0
