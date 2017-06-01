#!/bin/sh

# Fonction pour vérifier l'état de la commande précédente
check() {
    if [ $? = 0 ]
            then
                    echo "\nInstallation OK."
                    sudo usermod -a -G docker $USER 1> /dev/null
                    sudo systemctl daemon-reload
                    sudo systemctl enable docker.service
                    sudo systemctl restart docker.service
                    docker run hello-world
            else
                    echo "\nErreur lors de l'installation."
    fi
}

echo "\n[INFO] Installation de Docker..."
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable edge"
echo "\n..."
sudo apt-get update
sudo apt-get install -y docker-ce
check

exit 0
