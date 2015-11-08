Script will install most important packages from programmer point of view. Script is designed to work with fresh Ubuntu 15.10. Checked on 08/11/2015 

Script will be rewritten in Python to increase fuinctionality in the future however I use bash for this. I also plan to use "zenity" for better user experience in bash.

Installation instruction:
--------------------------
0. We need to enable the Canonical Partners repository, go to Software & Updates from Unity dash. Navigate to Other Software tab, and enable Canonical Partners repository. We need it for skype. Script will run without Step 0, however skype will not be installed.
1. sudo apt-get install git
2. git clone https://github.com/bombay1982/installiX.git
3. chmode +x installiX.sh
4. sudo sh installiX.sh


Packages:
----------------------------

SYSTEM:
----------------------------
- disables canonical's spyware from ubuntu
- quake					(dropdown terminal)
- chromium				(web browser)
- flash player				(flash for chromium)
- movie codecs				(ubuntu resctricted area)
- dropbox				
- skype
- hardinfo				(hardware information)
- unity tweak tool			(tweaks unity)
- gufw firewall				(firewall)
- compression tools: p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller
- extra options for unity like shutdown,restart etc commands which you can run directly from launcher
- wine 1.7+wintrcks

JAVA:
---------------------------
- sublime text				(code editor)
- eclipse mars				(java IDE)
- oracle jdk 8				(script automatically removes other java versions)

Panel widgets(Unity only)
---------------------------
- classing menu indicator
- radio indicator			(internet radios in the top bar)

Themes(because we like candy):
---------------------------
http://www.noobslab.com/2015/10/flat-plat-theme-makes-your-gnome.html
http://www.noobslab.com/2015/09/candra-os-anyone-heard-of-them-their-os.html
http://www.noobslab.com/2015/08/arc-theme-comes-with-dark-light.html
http://www.noobslab.com/2015/05/ambiance-radiance-flat-colors-theme.html
http://www.noobslab.com/2015/08/ubuntu-touch-theme-updated-for-ubuntu.html
http://www.noobslab.com/2015/05/ambiance-blackout-colors-suite-offers.html
http://www.noobslab.com/2015/11/stylishdark-theme-with-3-variants.html
http://www.noobslab.com/2015/11/ambiance-crunchy-themes-suite-is-now.html
http://www.noobslab.com/2015/05/ambiance-blackout-flat-colors-theme.html
http://www.noobslab.com/2015/10/ambiance-radiance-colors-suite-updated.html
http://www.noobslab.com/2015/11/ambiance-crunchy-themes-suite-is-now.html
http://www.noobslab.com/2015/10/borderline-gtk-theme-for-ubuntu-1510.html
http://www.noobslab.com/2015/09/aurora-another-great-theme-for-gnome.html
http://www.noobslab.com/2013/06/zoncolor-themes-and-icons-package-for.html
http://www.noobslab.com/2015/08/zorin-os-themes-icons-available-for.html

Icons:
---------------------------
- papirus 
- zoncolor 
- moka icon
- flatwoken 
- square beam
- ravefinity
- rave -x 
- vibrancy colors
- humanity colors
- myhumanity 
-zorin os
-numix icons


What I want add in the future:
---------------------------
- intellij
- atom
- any ideas 



