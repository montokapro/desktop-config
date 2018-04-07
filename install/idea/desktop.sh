#!/bin/bash
cd ~/.local/share/applications || exit

if [ -f "idea.desktop" ];then
    sudo rm idea.desktop
fi

cat > idea.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Intellij IDEA
Exec=idea
Icon=/opt/idea/bin/idea.png
Terminal=false
Type=Application
Categories=Development;
EOL

