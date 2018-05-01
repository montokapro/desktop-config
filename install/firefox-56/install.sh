#!/bin/bash
cd /tmp || exit

echo "Downloading Firefox 56 ..."
wget -q https://archive.mozilla.org/pub/firefox/releases/56.0.2/linux-x86_64/en-US/firefox-56.0.2.tar.bz2 -O firefox-56.tar.bz2
tar -vxjf firefox-56.tar.bz2
rm firefox-56.tar.bz2

echo "Installing to opt..."
if [ -d "/opt/firefox-56" ];then
    sudo rm -rf /opt/firefox-56
fi
sudo mv firefox /opt/firefox-56

echo "Creating symbolic link..."
if [ -L "/usr/bin/firefox-56" ];then
    sudo rm -f /usr/bin/firefox-56
fi
sudo ln -s /opt/firefox-56/firefox /usr/bin/firefox-56

echo "Firefox 56 installation completed successfully."
