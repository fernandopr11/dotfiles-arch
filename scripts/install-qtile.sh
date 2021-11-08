#!/bin/bash

# Instalacion de dependencias para qtile

sudo apt install xorg python3-xcffib python3-pip python3-cairocffi libcairo2 lightdm python3-psutil

# Instalacion de qtile mediante pip

sudo pip3 install qtile

#Creacion de la estructura para el archivo de configuracion base

mkdir -p ~/.config/qtile/
cp /usr/local/lib/python3.8/dist-packages/libqtile/resources/default_config.py ~/.config/qtile/config.ori
cp -r /usr/local/lib/python3.8/dist-packages/libqtile/resources/layout-icons/ .config/qtile/icons


#Configuracion basica para Qtile Derek Taylor

wget https://gitlab.com/dwt1/dotfiles/-/raw/master/.config/qtile/config.py?inline=false -O ~/.config/qtile/config.py

#Dar de alta a Qtile en el inicio de sesion

sudo bash -c 'cat > /usr/share/xsessions/qtile-venv.desktop <<EOF
[Desktop Entry]
Name=Qtile(venv)
Comment=Qtile Session Within Venv
Exec=/usr/local/bin/qtile start
Type=Application
Keywords=wm;tiling
EOF'




