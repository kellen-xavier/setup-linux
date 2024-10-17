#!/bin/bash

# Atualizar repositórios e sistema
sudo apt update && sudo apt upgrade -y

# Ferramentas de desenvolvimento

# Android Studio
sudo snap install android-studio --classic

# Visual Studio Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install -y sublime-text

# Emacs
sudo apt install -y emacs

# IntelliJ IDEA Community Edition (via Snap)
sudo snap install intellij-idea-community --classic

# DBeaver
sudo apt install -y dbeaver-ce

# Postman (via Snap)
sudo snap install postman

# FileZilla
sudo apt install -y filezilla

# Appium (via npm)
sudo apt install -y nodejs npm
sudo npm install -g appium

# UnityHub com configurações específicas para Linux Mint (baseado no Debian)
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage -O ~/UnityHub.AppImage
chmod +x ~/UnityHub.AppImage

# Navegadores

# Opera
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
sudo add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
sudo apt update
sudo apt install -y opera-stable

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Chromium
sudo apt install -y chromium-browser

# Ferramentas gerais

# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client

# Mega
wget https://mega.nz/linux/repo/xUbuntu_20.04/amd64/megasync-xUbuntu_20.04_amd64.deb
sudo apt install -y ./megasync-xUbuntu_20.04_amd64.deb

# Flameshot
sudo apt install -y flameshot

# Hydrapaper (adicionar repositório Flatpak)
sudo apt install -y flatpak
sudo flatpak install flathub org.gabmus.hydrapaper

# Discord
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt install -y ./discord.deb

# OBS Studio
sudo apt install -y obs-studio

# Teams (via Snap)
sudo snap install teams-for-linux

# Jogos e suporte

# Steam
sudo apt install -y steam-installer

# Nvidia Drivers
sudo ubuntu-drivers autoinstall

# Vulkan
sudo apt install -y vulkan-tools vulkan-utils

# QEMU
sudo apt install -y qemu

# Hydra Launcher
# Certifique-se de que você tem o link correto do Hydra Launcher, ele não está em repositórios comuns.

# Limpar pacotes desnecessários
sudo apt autoremove -y
