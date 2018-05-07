#!/bin/bash
cd /tmp || exit

echo "Downloading Chrome driver ..."
wget -q -N http://chromedriver.storage.googleapis.com/2.38/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip

echo "Installing to /usr/local/bin..."
if [ -d "/usr/local/bin/chromedriver" ];then
    sudo rm -rf /usr/local/bin/chromedriver
fi
sudo mv chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver

echo "Chrome driver installation completed successfully."
