#!/bin/bash

# Télécharge le fichier .deb de Visual Studio Code
wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868

# Installe le paquet Visual Studio Code
sudo dpkg -i vscode.deb

# Installe les dépendances manquantes
sudo apt install -f

# Supprime le fichier .deb téléchargé
rm vscode.deb

# Spécifie la version de PHPStorm à télécharger (remplacez le lien avec la version correcte)
phpstorm_version="2021.3.1"

# Télécharge le fichier .tar.gz de PHPStorm
wget -O phpstorm.tar.gz "https://download.jetbrains.com/webide/PhpStorm-${phpstorm_version}.tar.gz"

# Extrait l'archive dans le répertoire /opt
sudo tar xf phpstorm.tar.gz -C /opt/

# Supprime l'archive téléchargée
rm phpstorm.tar.gz

# Ajoute le chemin de PHPStorm au fichier de configuration de l'environnement
echo "export PATH=\"/opt/PhpStorm-${phpstorm_version}/bin/:$PATH\"" >> ~/.bashrc

# Charge les modifications dans la session en cours
source ~/.bashrc

# Lance PHPStorm
phpstorm