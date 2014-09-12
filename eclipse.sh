#install eclipse
#download
cd /tmp/
wget http://mirror.netcologne.de/eclipse/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz
tar -zxvf eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz
sudo chown -R root:root eclipse/
sudo mv eclipse /opt/
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse

cd /tmp/
#create eclipse starter
cat <<EOF> /tmp/eclipse.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse
Comment=Eclipse IDE
Exec=eclipse
Icon=/usr/eclipse/icon.xpm
Terminal=false
Type=Application
Categories=Application;Development;
StartupNotify=true
EOF
sudo mv /tmp/eclipse.desktop /usr/share/applications/eclipse.desktop
sudo chmod +r /usr/share/applications/eclipse.desktop
