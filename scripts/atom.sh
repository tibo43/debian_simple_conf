#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
  if [ $? = 0 ] ; then
    echo "\nInstallation OK."
    if [ -f /tmp/atom-amd64.deb ] ; then
      rm -f /tmp/atom-amd64.deb
    fi
    echo "\n  - Installation de Asciidoctor preview..."
    apm install asciidoc-preview
    echo "\n  - Installation de la coloration syntaxique Asciidoc..."
    apm install language-asciidoc
    echo "\n - Installation du plugin pour le statut de son repository git..."
    apm install tree-view-git-status
  else
      echo "\nErreur lors de l'installation."
  fi
}

echo "\n[INFO] Installation de Atom..."
wget -O /tmp/atom-amd64.deb https://atom.io/download/deb \
&& sudo dpkg --install /tmp/atom-amd64.deb \
&& sudo apt-get -f install 1> /dev/null
check

exit 0
