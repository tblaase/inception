#!/bin/bash
#this will prep a new installation of a virtual machine for inception
#the VM it is tested with is Ubuntu 22.04 LTS 64 bit as minimal installation, a size of 20GB is reccomended
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install make curl lsb-release ca-certificates apt-transport-https software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce -y
sudo apt-get update
sudo apt-get install docker-compose-plugin -y
if [ -d "/home/tblaase/data" ]; then \
	echo "/home/tblaase/data already exists"; else \
	mkdir /home/tblaase/data; \
fi

if [ -d "/home/tblaase/data/wordpress" ]; then \
	echo "/home/tblaase/data/wordpress already exists"; else \
	mkdir /home/tblaase/data/wordpress; \
fi

if [ -d "/home/tblaase/data/mariadb" ]; then \
	echo "/home/tblaase/data/mariadb already exists"; else \
	mkdir /home/tblaase/data/mariadb; \
fi
