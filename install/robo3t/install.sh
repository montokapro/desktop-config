#!/bin/bash
cd /tmp || exit

echo "Downloading Robo3t ..."
wget -q https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz -O robo3t.tar.gz
tar -xzf robo3t.tar.gz
rm robo3t.tar.gz

echo "Installing to opt..."
if [ -d "/opt/robo3t" ];then
    sudo rm -rf /opt/robo3t
fi
sudo mv robo3t-1.2.1-linux-x86_64-3e50a65 /opt/robo3t

echo "Creating symbolic link..."
if [ -L "/usr/bin/robo3t" ];then
    sudo rm -f /usr/bin/robo3t
fi
sudo ln -s /opt/robo3t/bin/robo3t /usr/bin/robo3t

echo "Robo3t installation completed successfully."
