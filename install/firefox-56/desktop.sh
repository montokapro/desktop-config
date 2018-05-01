#!/bin/bash
cd ~/.local/share/applications || exit

if [ -f "firefox-56.desktop" ];then
    sudo rm firefox-56.desktop
fi

cat > firefox-56.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Firefox 56
Exec=idea
Icon=/opt/firefox-56/firefox
Terminal=false
Type=Application
Categories=Development;
EOL

