#!/bin/bash

#ttf-mscorefonts  we need it to allow script running without user interaction
sudo apt-get install ttf-mscorefonts-installer -y

#install chromium
echo '--------------------------------------------------------'
echo '----------------Installing chromium---------------------'
echo '--------------------------------------------------------'
sudo apt-get install chromium-browser -y

echo '--------------------------------------------------------'
echo '----------------Installing flash for chromium-----------'
echo '--------------------------------------------------------'
sudo apt-get install pepperflashplugin-nonfree -y
sudo update-pepperflashplugin-nonfree --install

#movie codecs
echo '--------------------------------------------------------'
echo '----------------Installing codecs-----------------------'
echo '--------------------------------------------------------'
sudo apt-get install ubuntu-restricted-extras -y

#dropbox
echo '--------------------------------------------------------'
echo '----------------Installing dropbox----------------------'
echo '--------------------------------------------------------'
sudo apt-get install nautilus-dropbox -y

#skype
echo '--------------------------------------------------------'
echo '----------------Installing skype------------------------'
echo '--------------------------------------------------------'
sudo apt-get install skype -y

#synaptic - package manager
echo '--------------------------------------------------------'
echo '----------------Installing synaptic---------------------'
echo '--------------------------------------------------------'
sudo apt-get install synaptic -y

#information about your hardware
echo '--------------------------------------------------------'
echo '----------------Installing harware info-----------------'
echo '--------------------------------------------------------'
sudo apt-get install hardinfo -y

#install jdk java 8 from oracle
echo '--------------------------------------------------------'
echo '----------------Removing Open JDK-----------------------'
echo '--------------------------------------------------------'
sudo apt-get remove openjdk*
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update

#if you want accept oracle licence use line below
#sudo apt-get install oracle-java8-installer
#auto-aceptance of oracle terms
echo '--------------------------------------------------------'
echo '----------------Installing Oracle Java 8 JDK------------'
echo '--------------------------------------------------------'
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

#automatically set up the Java 8 environment variables
echo '--------------------------------------------------------'
echo '------------Setting up Oracle java environement---------'
echo '--------------------------------------------------------'
sudo apt-get install oracle-java8-set-default -y

#unity tweak tool for system modification
echo '--------------------------------------------------------'
echo '------------Installing Unity Tweak Tool-----------------'
echo '--------------------------------------------------------'
sudo apt-get install unity-tweak-tool -y

#guake - terminal
echo '--------------------------------------------------------'
echo '----------------Installing quake------------------------'
echo '--------------------------------------------------------'
sudo apt-get install guake -y

#install sublime text 3
echo '--------------------------------------------------------'
echo '----------------Installing Sublime Text 3---------------'
echo '--------------------------------------------------------'
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update
sudo apt-get install sublime-text-installer -y

#disable all spyware in ubuntu
echo '--------------------------------------------------------'
echo '------------Removing spyware out of ubuntu--------------'
echo '--------------------------------------------------------'
cd /tmp/
wget -q -O - https://fixubuntu.com/fixubuntu.sh | bash

#Shutdown, Restart, options for unity Dash
echo '--------------------------------------------------------'
echo '-Installing Shutdown, Restart, options for unity Dash---'
echo '--------------------------------------------------------'
sudo add-apt-repository ppa:atareao/atareao -y
sudo apt-get update
sudo apt-get install power-commands -y

#install gufw firewall
echo '--------------------------------------------------------'
echo '----------------Installing gufw firewall----------------'
echo '--------------------------------------------------------'
sudo apt-get install gufw -y

#Compression/Decompression tools
echo '--------------------------------------------------------'
echo '------------Installing compression tools----------------'
echo '--------------------------------------------------------'
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller -y

#Classic Menu Indicator
echo '--------------------------------------------------------'
echo '----------Installing classing menu indicator------------'
echo '--------------------------------------------------------'
sudo add-apt-repository ppa:diesch/testing -y
sudo apt-get update
sudo apt-get install classicmenu-indicator -y

#radio indicator
echo '--------------------------------------------------------'
echo '----------------Installing radio indicator--------------'
echo '--------------------------------------------------------'
sudo add-apt-repository ppa:eugenesan/ppa -y
sudo apt-get update
sudo apt-get install radiotray -y
cd /tmp/
#wget http://sourceforge.net/projects/radiotray/files/releases/radiotray_0.7.3_all.deb/download

#install wine
echo '--------------------------------------------------------'
echo '----------------Installing wine-------------------------'
echo '--------------------------------------------------------'
sudo add-apt-repository ppa:ubuntu-wine/ppa -y
sudo apt-get update
sudo apt-get install wine1.7 winetricks -y

##############eclipse##############################
echo '--------------------------------------------------------'
echo '----------------Downloading Eclipse Mars-----------------'
echo '--------------------------------------------------------'
#download
cd /tmp/
wget http://mirror.netcologne.de/eclipse//technology/epp/downloads/release/mars/R/eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz
tar -zxvf eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz
sudo chown -R root:root eclipse/
sudo mv eclipse /opt/
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse

echo '----------------Creating Eclipse Mars Unity Launcher-----------------'
cd /tmp/
#create eclipse starter
cat <<EOF> /tmp/eclipse.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse
Comment=Eclipse IDE
Exec=eclipse
Icon=/opt/eclipse/icon.xpm
Terminal=false
Type=Application
Categories=Application;Development;
StartupNotify=true
EOF
sudo mv /tmp/eclipse.desktop /usr/share/applications/eclipse.desktop
sudo chmod +r /usr/share/applications/eclipse.desktop

###########themes##########################
echo '--------------------------------------------------------'
echo '-------------------Installing themes--------------------'
echo '--------------------------------------------------------'
#flat+plat http://www.noobslab.com/2015/10/flat-plat-theme-makes-your-gnome.html
cd /tmp/
sudo add-apt-repository ppa:noobslab/themes -y
sudo add-apt-repository ppa:ravefinity-project/ppa -y
sudo apt-get update
sudo apt-get install flat-plat-gs -y

echo '----------------Installing CANDRA theme-----------------'
#candra http://www.noobslab.com/2015/09/candra-os-anyone-heard-of-them-their-os.html
sudo apt-get install candra-unity-themes -y

echo '----------------Installing ARC theme-----------------'
#arc http://www.noobslab.com/2015/08/arc-theme-comes-with-dark-light.html
sudo apt-get install arc-theme -y

echo '----------------Installing AMBIANCE&RADIANCE COLORS themes-----------------'
#ambiance and radiance colors http://www.noobslab.com/2015/05/ambiance-radiance-flat-colors-theme.html
sudo apt-get install ambiance-flat-colors -y
sudo apt-get install radiance-flat-colors -y

echo '----------------Installing TOUCH theme-----------------'
#touch theme http://www.noobslab.com/2015/08/ubuntu-touch-theme-updated-for-ubuntu.html
sudo apt-get install ubuntu-touch-theme -y

echo '----------------Installing BLACKOUT COLORS theme-----------------'
#ambiance blackout colors http://www.noobslab.com/2015/05/ambiance-blackout-colors-suite-offers.html
sudo apt-get install ambiance-blackout-colors -y

echo '----------------Installing STYLISH DARK theme-----------------'
#stylish dark themes http://www.noobslab.com/2015/11/stylishdark-theme-with-3-variants.html
sudo apt-get install stylishdark-theme -y

echo '----------------Installing CRUNCHY theme-----------------'
#crunchy themes http://www.noobslab.com/2015/11/ambiance-crunchy-themes-suite-is-now.html
sudo apt-get install ambiance-crunchy -y

echo '----------------Installing AMBIANCE BLACKOUT FLAT theme-----------------'
#ambiance blackout flat http://www.noobslab.com/2015/05/ambiance-blackout-flat-colors-theme.html
sudo apt-get install ambiance-blackout-flat-colors -y

# Ambiance & Radiance Suite http://www.noobslab.com/2015/10/ambiance-radiance-colors-suite-updated.html
echo '----------------Installing AMBIANCE COLORS theme-----------------'
#http://www.noobslab.com/2015/11/ambiance-crunchy-themes-suite-is-now.html
sudo apt-get install ambiance-colors radiance-colors -y

#borderline http://www.noobslab.com/2015/10/borderline-gtk-theme-for-ubuntu-1510.html
echo '----------------Installing BORDERLINE theme-----------------'
sudo apt-get install borderline -y

#aurora http://www.noobslab.com/2015/09/aurora-another-great-theme-for-gnome.html
echo '----------------Installing AURORA theme-----------------'
sudo apt-get install aurora-themes -y

#zon themes
echo '----------------Installing ZON theme-----------------'
#http://www.noobslab.com/2013/06/zoncolor-themes-and-icons-package-for.html
sudo apt-get install zoncolorzoncolor-themes -y

echo '----------------Installing ZORIN theme-----------------'
#http://www.noobslab.com/2015/08/zorin-os-themes-icons-available-for.html
sudo apt-get install zorinos-themes -y


########################icons####################################
sudo add-apt-repository ppa:noobslab/icons -y
sudo add-apt-repository ppa:moka/stable -y 
sudo add-apt-repository ppa:ravefinity-project/ppa -y
sudo add-apt-repository ppa:noobslab/icons2 -y
sudo apt-add-repository ppa:numix/ppa -y
sudo apt-get update
echo '--------------------------------------------------------'
echo '-----------------Installing ICONS-----------------------'
echo '--------------------------------------------------------'

echo '----------------Installing PAPIRUS icons----------------'
sudo apt-get install papirus-icons -y

echo '----------------Installing ZONCOLOR icons---------------'
sudo apt-get install zoncolor-icons -y

echo '----------------Installing MOKA icons-------------------'
sudo apt-get install moka-icon-theme -y

echo '----------------Installing FLATWOKEN icons--------------'
sudo apt-get install flatwoken-icons -y

echo '----------------Installing SQUARE BEAM icons------------'
sudo apt-get install square-beam-icons -y

echo '------------Installing RAVEFINITY icons-----------------'
sudo apt-get install ravefinity-x-icons -y #12 different colors

echo '---------Installing RAVE-X COLORS icons-----------------'
sudo apt-get install rave-x-colors-icons -y

echo '--------------Installing VIBRANCY icons-----------------'
sudo apt-get install vibrancy-colors -y

echo '--------------Installing HUMANITY icons-----------------'
sudo apt-get install humanity-colors -y

echo '-----------Installing MY HUMANITY icons-----------------'
sudo apt-get install myhumanity -y

echo '--------------Installing ZORIN OS icons-----------------'
sudo apt-get install zorinos-icons -y

echo '----------------Installing NUMIX icons-----------------'
sudo apt-get install numix-icon-theme numix-icon-theme-circle -y


echo '----------------JOB IS DONE MY MASTER-----------------'






