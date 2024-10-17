#!/bin/bash

# Aplicar tema Orchidea e outras configurações de aparência

# Instalar tema Orchidea (caso não esteja instalado)
sudo apt install -y orchidea-theme

# Definir o tema Orchidea
gsettings set org.cinnamon.desktop.wm.preferences theme 'Orchidea'

# Definir a cor da barra do sistema como transparente
gsettings set org.cinnamon.theme name 'Orchidea'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Orchidea'
gsettings set org.cinnamon.desktop.background picture-opacity 0

# Reiniciar o Cinnamon para aplicar as mudanças
cinnamon --replace &
