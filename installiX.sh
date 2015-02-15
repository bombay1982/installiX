#!/bin/bash


#need to implement this soon
choice=$(zenity \
    --list \
    --checklist \
    --column "Tick box" \
    --column "Program" \
    --height 600 \
    --width 500 \
    FALSE Chromium \
    FALSE Install-Flash-Player \
    FALSE Deepin-Terminal \
    FALSE Ubuntu-restricted-extras \
    FALSE Dropbox \
    FALSE Hardinfo \
    FALSE Eclipse \
    FALSE Oracle-JDK-8 \
    FALSE Unity-Tweak-Tool \
    FALSE Sublime-Text-3 \
    FALSE Disable-spyware-in-ubuntu \
    FALSE Disable-overlay-scroll-bars \
    FALSE Shutdown-Restart-options-from-Unity-Launcher \
    FALSE GUFW-firewall \
    FALSE Compression-and-Decompression-tools-RAR \
    FALSE Britghness-indicator-in-the-panel \
    FALSE Classic-Menu-Indicator-in-the-panel \
    )




<<'COMMENT1'
#install chromium
sudo apt-get install chromium-browser

#best terminal ever - deepin terminal
sudo add-apt-repository ppa:noobslab/deepin-sc -y
sudo apt-get update
sudo apt-get install deepin-terminal

#install newer flash player peppermint
sudo add-apt-repository ppa:skunk/pepper-flash -y
sudo apt-get update
sudo apt-get install pepflashplugin-installer
echo '. /usr/lib/pepflashplugin-installer/pepflashplayer.sh' | sudo tee -a /etc/chromium-browser/default

#movie codecs
sudo apt-get install ubuntu-restricted-extras

#dropbox
sudo apt-get install dropbox python-gpgme

#skype
sudo apt-get install skype

#information about your hardware
sudo apt-get install hardinfo

#install jdk java 8 from oracle
sudo apt-get remove openjdk*
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update

#if you want accept oracle licence use line below
#sudo apt-get install oracle-java8-installer
#auto-aceptance of oracle terms
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

#automatically set up the Java 8 environment variables
sudo apt-get install oracle-java8-set-default

#unity tweak tool for system modification
sudo apt-get install unity-tweak-tool

#guake - terminal
sudo apt-get install guake

#install sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update
sudo apt-get install sublime-text-installer

#You can disable overlay scroll-bars, if you don't like them. replace that with regular
gsettings set com.canonical.desktop.interface scrollbar-mode normal

#disable all spyware in ubuntu
wget -q -O - https://fixubuntu.com/fixubuntu.sh | bash

#Shutdown, Restart, options from Dash
sudo add-apt-repository ppa:atareao/atareao -y
sudo apt-get update
sudo apt-get install power-commands

#install gufw firewall
sudo apt-get install gufw

#Compression/Decompression tools
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

#britghness indicator in the panel
sudo add-apt-repository ppa:indicator-brightness/ppa -y
sudo apt-get update
sudo apt-get install indicator-brightness

#Classic Menu Indicator
sudo add-apt-repository ppa:diesch/testing -y
sudo apt-get update
sudo apt-get install classicmenu-indicator

#radio indicator
sudo add-apt-repository ppa:eugenesan/ppa -y
sudo apt-get update
sudo apt-get install radiotray
wget http://sourceforge.net/projects/radiotray/files/releases/radiotray_0.7.3_all.deb/download

#install wine
sudo add-apt-repository ppa:ubuntu-wine/ppa -y
sudo apt-get update
sudo apt-get install wine1.7 winetricks

#install eclipse
#download
cd /tmp/
wget http://mirror.netcologne.de/eclipse/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz
tar -zxvf eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz
sudo chown -R root:root eclipse/
sudo mv eclipse /opt/
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse

#nautilus extensions

#open terminal in current folder
sudo apt-get install nautilus-open-terminal 

#image extensions
sudo add-apt-repository ppa:atareao/nautilus-extensions
sudo apt-get update
sudo apt-get install nautilus-document-converter nautilus-image-tools

#open folder as a administrator
sudo apt-get install nautilus-gksu



cd /tmp/
#create eclipse starter
cat <<EOF> /tmp/eclipse.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse
sudo apt-get update
sudo apt-get install nautilus-document-converter nautilus-image-tools
Comment=Eclipse IDE
Exec=eclipse
Icon=/opt/eclipse/icon.xpm
Terminal=false
Type=Application
Categories=Application;Development;
StartupNotify=true
EOF
sudo mv /tmp/eclipse.dgroupesktop /usr/share/applications/eclipse.desktop
sudo chmod +r /usr/share/applications/eclipse.desktop
COMMENT1

#theming

#icons

1
