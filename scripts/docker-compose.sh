#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ]
            then
                    echo "\nInstallation OK"
            else
                    echo "\nErreur lors de l'installation."
    fi
}

echo "\n[INFO] Installation de Docker-Compose..."
curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
check

exit 0
