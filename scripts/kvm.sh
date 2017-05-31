#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ] ; then
      echo "\nInstallation OK."
    else
      echo "\nErreur lors de l'installation."
    fi
}


echo "\n[INFO] Installation de qemu/kvm..."
sudo apt-get install -y qemu-kvm libvirt-clients libvirt-daemon virt-manager 1> /dev/null
check

exit 0
