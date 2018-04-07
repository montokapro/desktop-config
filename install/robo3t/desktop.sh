#!/bin/bash
cd ~/.local/share/applications || exit

if [ -f "robo3t.desktop" ];then
    sudo rm robo3t.desktop
fi

cat > robo3t.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Robo3t
Exec=robo3t
Terminal=false
Type=Application
Categories=Development;
EOL

