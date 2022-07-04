#!/bin/bash

# not sure if needed during evaluation
# this will prep a new installation of a virtual machine for inception
# the VM it is tested with is Ubuntu 22.04 LTS 64 bit as minimal installation (all software updates and git installed), a size of 20GB is reccomended

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install make curl lsb-release ca-certificates apt-transport-https software-properties-common hostsed -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce -y
sudo apt-get update
sudo apt-get install docker-compose docker-compose-plugin -y
sudo apt-get update
sudo rm -rf /var/lib/apt/lists/*

if [ -d "/home/$USER/data" ]; then \
	echo "/home/$USER/data already exists"; else \
	mkdir /home/$USER/data; \
	echo "data directory created successfully"; \
fi

if [ -d "/home/$USER/data/wordpress" ]; then \
	echo "/home/$USER/data/wordpress already exists"; else \
	mkdir /home/$USER/data/wordpress; \
	echo "wordpress directory created successfully"; \
fi

if [ -d "/home/$USER/data/mariadb" ]; then \
	echo "/home/$USER/data/mariadb already exists"; else \
	mkdir /home/$USER/data/mariadb; \
	echo "mariadb directory created successfully"; \
fi
