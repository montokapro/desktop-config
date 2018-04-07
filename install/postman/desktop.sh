#!/bin/bash
cd ~/.local/share/applications || exit

if [ -f "postman.desktop" ];then
    sudo rm postman.desktop
fi

cat > postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

