#!/bin/bash

# Installation de Docker

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker debian

# Installation de Git
sudo apt-get install git

# Création de l'utilisateur `movierizer`
sudo useradd -s /bin/bash -m movierizer

# Ajout de l'utilisateur `movierizer` au groupe Docker
sudo usermod -aG docker movierizer

# Création d'une clé SSH pour communiquer
sudo rm -f "/home/movierizer/.ssh/deploy_key" "/home/movierizer/.ssh/deploy_key.pub"
sudo -u movierizer ssh-keygen -t rsa -b 4096 -C "vpisolutions@pm.me" -N "" -f /home/movierizer/.ssh/deploy_key


sudo -u movierizer cat /home/movierizer/.ssh/deploy_key.pub >> /home/movierizer/.ssh/authorized_keys
sudo chmod 600 /home/movierizer/.ssh/authorized_keys

sudo -u movierizer echo "Host gitlab.com
    HostName gitlab.com
    User git
    IdentityFile /home/movierizer/.ssh/deploy_key" > /home/movierizer/.ssh/config