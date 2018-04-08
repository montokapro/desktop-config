#!/bin/bash
cd /tmp || exit

echo "Downloading Docker Compose ..."
wget -q https://github.com/docker/compose/releases/download/1.20.1/docker-compose-$(uname -s)-$(uname -m) -O docker-compose
chmod +x docker-compose

echo "Installing to user local..."
if [ -d "/usr/local/bin/docker-compose" ];then
    sudo rm -rf /usr/local/bin/docker-compose
fi
sudo mv docker-compose /usr/local/bin/docker-compose

echo "Docker Compose installation completed successfully."

