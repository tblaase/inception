#!/bin/bash
#this will prep a new installation of a virtual machine for inception
#the VM it is tested with is Ubuntu 22.04 LTS as minimal installation, a size of 20GB is reccomended
sudo apt update
sudo apt upgrade -y
sudo apt install make curl lsb-release ca-certificates apt-transport-https software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce -y
sudo apt update
sudp apt install docker-compose-plugin -y
