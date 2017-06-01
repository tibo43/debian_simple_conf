#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ] ; then
      echo "\nInstallation OK."
      echo "\nUtiliser gnome-tweak-tool pour l'appliquer"
      gnome-tweak-tool
    else
      echo "\nErreur lors de l'installation."
    fi
}

echo "\n[INFO] Installation du thème Numix..."
sudo apt-get install -y numix-gtk-theme numix-icon-theme 1> /dev/null
check

exit 0
