#!/bin/bash

# Atualizar e instalar as dependências necessárias
sudo apt update
sudo apt install -y gnome-tweaks git curl

# Criar diretórios para temas e ícones se não existirem
mkdir -p ~/.themes ~/.icons

# Instalar o tema Orchidéea (exemplo fictício, ajuste conforme o tema real)
echo "Instalando tema Orchidéea..."
git clone https://github.com/exemplo/orchidea-theme.git ~/.themes/Orchidea

# Instalar o pacote de ícones com estilo arredondado
echo "Instalando ícones arredondados..."
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git ~/icons/whitesur
~/icons/whitesur/install.sh -i rounded

# Instalar tema escuro para a barra de janelas com tons de rosa
echo "Instalando tema escuro com tons de rosa..."
git clone https://github.com/vinceliuice/Orchis-theme.git ~/.themes/Orchis-dark-pink
~/.themes/Orchis-dark-pink/install.sh

# Definir os temas e ícones usando o gsettings
echo "Aplicando temas e ícones..."
gsettings set org.gnome.desktop.interface gtk-theme "Orchidea"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-rounded"
gsettings set org.gnome.desktop.wm.preferences theme "Orchis-dark-pink"

# Concluir
echo "Configuração de temas e ícones concluída!"
