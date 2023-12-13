#!/bin/bash

# Télécharge le fichier .deb de Visual Studio Code
wget -O vscode.deb https://vscode.download.prss.microsoft.com/dbazure/download/stable/af28b32d7e553898b2a91af498b1fb666fdebe0c/code_1.85.0-1701895805_arm64.deb

# Installe le paquet Visual Studio Code
sudo dpkg -i vscode.deb

# Installe les dépendances manquantes
sudo apt install -f

# Supprime le fichier .deb téléchargé
rm vscode.deb

## Spécifie la version de PHPStorm à télécharger (remplacez le lien avec la version correcte)
#phpstorm_version="2023.1.1"
#
## Télécharge le fichier .tar.gz de PHPStorm
#wget -O phpstorm.tar.gz "https://download.jetbrains.com/webide/PhpStorm-${phpstorm_version}.tar.gz"
#
## Extrait l'archive dans le répertoire /opt
#sudo tar xf phpstorm.tar.gz -C /opt/
#
## Supprime l'archive téléchargée
#rm phpstorm.tar.gz
#
## Ajoute le chemin de PHPStorm au fichier de configuration de l'environnement
#echo "export PATH=\"/opt/PhpStorm-${phpstorm_version}/bin/:$PATH\"" >> ~/.bashrc
#
## Charge les modifications dans la session en cours
#source ~/.bashrc
#
## Lance PHPStorm
#phpstorm