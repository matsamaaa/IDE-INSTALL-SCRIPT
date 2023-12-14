#!/bin/bash

## Télécharge le fichier .deb de Visual Studio Code
#wget -O vscode.deb https://vscode.download.prss.microsoft.com/dbazure/download/stable/af28b32d7e553898b2a91af498b1fb666fdebe0c/code_1.85.0-1701895805_arm64.deb
#
## Installe le paquet Visual Studio Code
#sudo dpkg -i vscode.deb
#
## Installe les dépendances manquantes
#sudo apt install -f
#
## Supprime le fichier .deb téléchargé
#rm vscode.deb

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_arm64.deb
sudo apt-get install -f

echo "Visual Studio Code has been installed !"
