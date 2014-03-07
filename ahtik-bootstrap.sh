#!/bin/bash

# bootstrapper for ubuntu 12.04.2

# packages

# Starting openvpn
# REPOS
sudo add-apt-repository ppa:gwendal-lebihan-dev/cinnamon-stable
sudo add-apt-repository ppa:krytarik/tuxgarage
sudo add-apt-repository ppa:gnome-terminator
sudo apt-add-repository ppa:alexmurray/indicator-sensors
sudo add-apt-repository ppa:atareao/atareao
sudo add-apt-repository ppa:yubico/stable
ppa:thebernmeister/ppa
ppa:kilian/f.lux
ppa:geod/ppa-geod
ppa:mozillateam/thunderbird-next
ppa:kubuntu-ppa/backports
add-apt-repository ppa:no1wantdthisname/ppa
add-apt-repository ppa:no1wantdthisname/openjdk-fontfix
wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg ; \
sudo rpm --import RPM-GPG-KEY-ilg

# PACKAGES
indicator-sensors my-weather-indicator gtk2-engines-pixbuf indicator-virtual-box fluxgui indicator-workspaces unity-2d-settings compizconfig-settings-manager ppa-purge gconf-editor compiz-fusion-plugins-extra git python-pip pavucontrol paprefs devilspie gdevilspie xdotool conky tint2 xfonts-terminus enigmail thunderbird fontconfig-infinality gnome-tweak-tool unclutter darc dnsutils mesa-utils libxinerama-dev
sudo apt-get install libxxf86vm-dev libxinerama-dev libxss-dev python-yubico

xchat rxvt-unicode pidgin transmission terminator autojump mc vim python3  kupfer zsh dropbox dkms virtualbox

sudo apt-get install bluetooth bluez-compat bluez-utils blueman

sudo apt-get install sane libsane-extras xsane

aptitude install libssl-dev zlib1g-dev libvorbis-dev libtool
    aptitude install libpulse-dev # For pulseaudio backend
      aptitude install libgstreamer-plugins-base0.10-0 libgstreamer0.10-dev # For GStreamer backend
        aptitude install libao-dev # For libao backends

# Intel graphics
wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg-2 -O - | \
sudo apt-key add -

#OPENVPN conf
sudo openvpn --config /home/ahtik/vpn/xxx.ovpn&

# For xmonad & haskell
sudo apt-get install libghc-x11-dev
# Run
# cabal install cabal-install
# to update haskell libs

# ZSH
chsh -s /bin/zsh

# fix expose
sudo add-apt-repository ppa:mc3man/fixing-scale
https://launchpad.net/ubuntu-tweak/0.8.x/0.8.5/+download/ubuntu-tweak_0.8.5-1_all.deb

sudo apt-get purge unity-lens-video unity-lens-shopping unity-lens-photos unity-lens-gwibber unity-lens-files unity-lens-applications unity-lens-music

download skype from http://www.skype.com/en/download-skype/skype-for-linux/downloading/?type=ubuntu64
install lastpass from https://lastpass.com/misc_download.php


# FONTS
wget http://webupd8.googlecode.com/files/install-google-fonts
chmod +x install-google-fonts

# Install SourceCodePro fonts
#!/bin/bash
FONT_NAME="SourceCodePro"
URL="http://sourceforge.net/projects/sourcecodepro.adobe/files/latest/download"

mkdir /tmp/adodefont
cd /tmp/adodefont
wget ${URL} -O ${FONT_NAME}.zip
unzip -o -j ${FONT_NAME}.zip
mkdir -p ~/.fonts
cp *.otf ~/.fonts
fc-cache -f -v


# ID kaardi tugi
sudo apt-get install esteid
sudo add-apt-repository https://installer.id.ee/media/ubuntu/


sudo apt-get remove qdigidoc mozilla-esteid libdigidocpp0 thunderbird-esteid libdigidoc libdigidoc-dev libdigidocpp libdigidocpp-dev libdigidocpp
sudo dpkg -r libdigidoc2
sudo dpkg -r libdigidoc-common
rm -rf /var/cache/apt/archives/libdigidoc2_3.7.0.909-ubuntu-12-04_i386.deb rm -rf /var/cache/apt/archives/libdigidocpp0_3.7.0.969-ubuntu-12-04_i386.deb

sudo apt-get install virtualbox-guest-dkms

# Latest java
sudo add-apt-repository ppa:webupd8team/java

#Java
sudo apt-get install oracle-java6-installer
sudo apt-get install oracle-java7-installer
sudo update-java-alternatives -s java-7-oracle
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java7-set-default

update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-7-oracle/bin/java 1065
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-7-oracle/bin/javac 1065


# /etc/apt/sources.list
# deb https://installer.id.ee/media/ubuntu/ precise main
# deb http://ppa.launchpad.net/esteid/ppa/ubuntu precise main
# deb-src http://ppa.launchpad.net/esteid/ppa/ubuntu precise main


# Update kernel
wget -c kernel.ubuntu.com/~kernel-ppa/mainline/v3.10-saucy/linux-headers-3.10.0-031000_3.10.0-031000.201306301935_all.deb
wget -c kernel.ubuntu.com/~kernel-ppa/mainline/v3.10-saucy/linux-headers-3.10.0-031000-generic_3.10.0-031000.201306301935_amd64.deb
wget -c kernel.ubuntu.com/~kernel-ppa/mainline/v3.10-saucy/linux-image-3.10.0-031000-generic_3.10.0-031000.201306301935_amd64.deb
$ wget -c kernel.ubuntu.com/~kernel-ppa/mainline/v3.11-saucy/linux-headers-3.11.0-031100_3.11.0-031100.201309021735_all.deb
$ wget -c kernel.ubuntu.com/~kernel-ppa/mainline/v3.11-saucy/linux-headers-3.11.0-031100-generic_3.11.0-031100.201309021735_amd64.deb
$ wget -c kernel.ubuntu.com/~kernel-ppa/mainline/v3.11-saucy/linux-image-3.11.0-031100-generic_3.11.0-031100.201309021735_amd64.deb

sudo dpkg -i *.deb
sudo dpkg -i /opt/cache/kernel-3.11/*.deb



gsettings set org.gnome.desktop.interface menubar-accel ""

gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2


## OPENBOX section
sudo apt-get install openbox tint2 xcompmgr docky obconf synapse thunar thunar-archive-plugin thunar-media-tags-plugin nitrogen parcellite

# sudo add-apt-repository ppa:xubuntu-dev/xfce-4.10
# sudo add-apt-repository ppa:xubuntu-dev/xfce-4.12


#rhythmbox update to fix the memory leak
sudo add-apt-repository ppa:edgar2705/my-ppa
sudo add-apt-repository ppa:webupd8team/rhythmbox


sudo add-apt-repository ppa:ubuntu-x-swat/x-updates
sudo ppa-purge ppa:ubuntu-x-swat/x-updates

sudo apt-get install xfce4-utils xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-dict xfce4-indicator-plugin xfce4-netload-plugin xfce4-power-manager xfce4-quicklauncher-plugin xfce4-screenshooter xfce4-systemload-plugin moreutils gitg git-cola gitk giggle git-gui openvpn tofrodos ruby apcalc xloadimage virtualbox-guest-additions-iso virtualbox dkms rar acroread ttf-ancient-fonts lsb-core estonianidcard ruby-full ruby-dev

#install latest from https://01.org/linuxgraphics/downloads

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:keithw/mosh
sudo apt-get update
sudo apt-get install mosh

apt-get install ghc6

# icc color profiles:
sudo apt-get install argyll icc-utils

# Not working properly...
http://www.craiglotter.co.za/2012/04/20/how-to-install-s3fs-on-an-ubuntu-server/
sudo apt-get install libfuse-dev fuse-utils libcurl4-openssl-dev libxml2-dev mime-support
wget http://downloads.sourceforge.net/project/fuse/fuse-2.X/2.9.3/fuse-2.9.3.tar.gz?ts=1332512245&use_mirror=tenet
http://xentek.net/articles/448/installing-fuse-s3fs-and-sshfs-on-ubuntu/
# better s3 candidate
http://www.dragondisk.com/faq.html


sudo apt-get install postgresql-client  libpq-dev


sudo apt-get install libssl0.9.8


xfce4-taskmanager xfce4-terminal xfce4-volumed xfce4-weather-plugin xfce4-xkb-plugin
sudo apt-get install arandr

sudo apt-get install shimmer-themes gnome-icon-theme-full

sudo add-apt-repository ppa:webupd8team/themes
sudo apt-get update
sudo apt-get install adwaita-x-dark-theme adwaita-x-light-theme
sudo apt-get install htop

# Map Caps lock as ctrl
/usr/bin/setxkbmap -option '' -option 'ctrl:nocaps'
https://github.com/amix/vimrc
https://github.com/sgerrand/xfce4-terminal-colors-solarized

xfwm4-themes


https://makandracards.com/makandra/12447-how-to-move-a-window-to-the-next-monitor-on-xfce-xubuntu

$ sudo nano -w /etc/security/limits.conf

YOURUSERNAME - rtprio 99
YOURUSERNAME - nice -10

https://github.com/jtmohr/xchat-colors-solarized

#hexchat
sudo add-apt-repository ppa:gwendal-lebihan-dev/hexchat-stable
sudo apt-get install hexchat


sudo visudo
ahtik ALL=(ALL) NOPASSWD: ALL


Edit /usr/share/gnome-session/sessions/xmonad.session
[GNOME Session]
 Name=Xmonad/GNOME
 RequiredComponents=gnome-settings-daemon;gnome-panel;
 RequiredProviders=windowmanager;panel;
 DefaultProvider-windowmanager=xmonad
 DefaultProvider-panel=unity-2d-panel
 DesktopName=Unity

Install
https://launchpad.net/egtk

sudo apt-add-repository -y ppa:teejee2008/themes
sudo apt-get update
sudo apt-get install elementary-gtk-theme


sudo apt-get install gnome-shell-extensions gnome-tweak-tool
# Then enable "User Themes Extension" from gnome-tweak-tool/Advanced Settings

sudo apt-get install gnome-themes-standard gnome-themes-extras gnome-themes-ubuntu gnome-themes-standard-data gnome-theme-gilouche

# dmg file creation mkfs.hfs
sudo apt-get install hfsprogs

sudo add-apt-repository ppa:tiheum/equinox
sudo apt-get update && sudo apt-get install faience-theme faience-icon-theme

sudo apt-add-repository ppa:kokoto-java/omgubuntu-stuff
sudo apt-get update
sudo apt-get install hope-gtk-theme


sudo add-apt-repository ppa:numix/ppa
sudo apt-get install numix-gtk-theme

sudo add-apt-repository ppa:webupd8team/themes
sudo apt-get install oxygen-molecule gtk2-engines-oxygen gtk2-engines-oxygen
sudo apt-get install  kde-gtk-config

ttf-mscorefonts

 gconftool --type boolean --set /apps/nautilus/preferences/show_desktop false

#NodeJS
sudo apt-get install nodejs npm nodejs-legacy

ppa:mozillateam/thunderbird-next

# itec expresscard
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1006765
1. Install the latest 3.12 kernel.
WORKAROUND: sudo echo acpiphp >> /etc/modules
Modify /etc/default/grub to have:
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pciehp_force=1 pciehp_poll_mode=1"

and run:
sudo update-grub





