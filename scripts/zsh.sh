#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ] ; then
      echo "\nInstallation OK."
      wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
      sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sudo zsh
      chsh -s `which zsh`
      rsync $PWD/config/.zshrc ~/
      sudo ln -s ~/.zshrc /root/.zshrc
    else
      echo "\nErreur lors de l'installation."
    fi
}

echo "\n[INFO] Installation de vim..."
sudo apt-get install -y zsh 1> /dev/null
check

exit 0
