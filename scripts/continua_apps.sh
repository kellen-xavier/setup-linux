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
