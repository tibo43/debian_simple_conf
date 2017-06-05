#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
  if [ $? = 0 ] ; then
    echo "\nSetup OK."
    if [ -f /tmp/atom-amd64.deb ] ; then
      rm -f /tmp/atom-amd64.deb
    fi
    echo "\n  - Setup AsciiDoctor preview..."
    apm install asciidoc-preview
    echo "\n  - Setup AsciiDoc syntax colour..."
    apm install language-asciidoc
    echo "\n - Setup Git repository status..."
    apm install tree-view-git-status
    echo "\n - Setup file icon..."
    apm install file-icons
    echo "\n  - Setup Dockerfile syntax colour..."
    apm install language-docker
  else
      echo "\nError while setup."
  fi
}

echo "\n[INFO] Atom setup..."
wget -O /tmp/atom-amd64.deb https://atom.io/download/deb \
&& sudo dpkg --install /tmp/atom-amd64.deb
check

exit 0
