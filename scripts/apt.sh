#!/bin/bash
##install apps ##
sudo apt-get install\
apt-transport-https\
autoconf\
autopoint\
adb\
apt-transport-https\
autoconf\
autopoint\
ca-certificates\
curl\
default-jdk\
git\
gnupg\
gnome-tweaks\
gnupg-agent\
htop\
jp2a\
lsb-release\
libtool\
lutris\
libvulkan1\
libvulkan1:i386\
libgnutls30:i386\
libldap-2.4-2:i386\
libgpg-error0:i386\
libxml2:i386\
libasound2-plugins:i386\
libsdl2-2.0-0:i386\
libfreetype6:i386\
libdbus-1-3:i386\
libsqlite3-0:i386\
neofetch\
openssl\
playonlinux\
piper\
steam\
steam-installer\
steam-devices\
snapd\
vim\

## Removendo blocks do apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

##update##
sudo apt update -y

sudo apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y

#update e limpar repositório#
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
