#!/bin/bash
cd /tmp || exit

echo "Downloading Intellij IDEA ..."
wget -q https://download.jetbrains.com/idea/ideaIC-2018.1.tar.gz -O idea.tar.gz
tar -xzf idea.tar.gz
rm idea.tar.gz

echo "Installing to opt..."
if [ -d "/opt/idea" ];then
    sudo rm -rf /opt/idea
fi
sudo mv idea-IC-181.4203.550 /opt/idea

echo "Creating symbolic link..."
if [ -L "/usr/bin/idea" ];then
    sudo rm -f /usr/bin/idea
fi
sudo ln -s /opt/idea/bin/idea.sh /usr/bin/idea

echo "Intellij IDEA installation completed successfully."
