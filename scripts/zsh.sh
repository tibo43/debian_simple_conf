#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ] ; then
      echo "\nInstallation OK."
      ## zsh for current user
      wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
      chsh -s `which zsh`
      rsync $PWD/config/.zshrc ~/
      ## zsh for root
      sudo ln -s /home/tfabre/.oh-my-zsh /root/.oh-my-zsh
      sudo ln -s ~/.zshrc /root/.zshrc
      sudo chsh -s `which zsh`
      rm -f install.sh
    else
      echo "\nErreur lors de l'installation."
    fi
}

echo "\n[INFO] Installation de vim..."
sudo apt-get install -y zsh 1> /dev/null
check

exit 0
