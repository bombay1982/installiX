#!/bin/bash
#install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

#install chromium
sudo apt-get install chromium-browser

#install newer flash player peppermint
sudo apt-get install pepperflashplugin-nonfree
sudo dpkg-reconfigure pepperflashplugin-nonfree

#codecs
sudo apt-get install ubuntu-restricted-extras

#dropbox
sudo apt-get install dropbox python-gpgme

#skype
sudo apt-get install skype

#program do sprawdzenie dokladnego hardware'u kompa - hardinfo
sudo apt-get install hardinfo

#install better fonts, change them manually with this http://www.binarytides.com/optimize-fonts-linux-mint/
sudo apt-get install fonts-droid fonts-noto


#install jdk java 8 from oracle
sudo apt-get remove openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
#if you want accept oracle licence use line below
#sudo apt-get install oracle-java8-installer
#auto-aceptance of oracle terms
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#automatically set up the Java 8 environment variables
sudo apt-get install oracle-java8-set-default

#install eclipse
#download
echo https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz&mirror_id=491
sudo mv eclip*.tar.gz /opt
sudo chown -R root:root eclipse/
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse

#guake - terminal
sudo apt-get install guake

#install sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer












