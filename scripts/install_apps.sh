#!/bin/bash

# Atualizar repositórios e sistema
sudo apt update && sudo apt upgrade -y

# Ferramentas de desenvolvimento
sudo apt install -y android-studio code sublime-text emacs intellij-idea-community unityhub dbeaver postman filezilla appium

# UnityHub com configurações específicas para Linux Mint (baseado no Debian)
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage -O ~/UnityHub.AppImage
chmod +x ~/UnityHub.AppImage

# Navegadores
sudo apt install -y opera-stable google-chrome-stable chromium-browser

# Ferramentas gerais
sudo apt install -y calibre spotify-client megasync flameshot hydrapaper discord obs-studio teams

# Jogos e suporte
sudo apt install -y steam-installer nvidia-driver-* vulkan-tools vulkan-utils qemu hydra-launcher

# Limpar pacotes desnecessários
sudo apt autoremove -y
