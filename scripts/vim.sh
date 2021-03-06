#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ] ; then
      echo "\nInstallation OK."
      sudo update-alternatives --set editor /usr/bin/vim.basic
      rsync $PWD/config/.vimrc ~/
      sudo ln -s ~/.vimrc /root/.vimrc
    else
      echo "\nErreur lors de l'installation."
    fi
}

echo "\n[INFO] Installation de vim..."
sudo apt-get install -y vim vim-addon-manager 1> /dev/null
check

exit 0
