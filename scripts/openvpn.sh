#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ]
            then
                    echo "\nInstallation OK."
            else
                    echo "\nErreur lors de l'installation."
    fi
}


echo "\n[INFO] Installation de OpenVPN..."
sudo apt-get install -y libssl-dev 1> /dev/null
sudo apt-get install -y liblzo2-dev 1> /dev/null
sudo apt-get install -y libpam0g-dev 1> /dev/null
sudo apt-get install -y openvpn 1> /dev/null
sudo apt-get install -y network-manager-openvpn network-manager-openvpn-gnome 1> /dev/null
check

exit 0
