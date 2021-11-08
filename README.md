# Dotfiles & Configs

![Ubuntu](https://user-images.githubusercontent.com/76860968/140549874-a8372941-339c-40ad-b636-9535f998dcc1.png)

# Índice

- [Resumen](#resumen)
- [Instalación de Ubuntu](#instalación-de-ubuntu)
- [Instalacion de Qtile](#instalacion-de-qtile)




# Instalación de Ubuntu





# Instalacion de Qtile

En este caso Qtile no esta dentro del repositorio de paquetes apt utilizado por Ubuntu, por lo tanto es necesario instalar las dependendicas necesarias y posteriormente instalarlo con pip:

```bash
sudo apt install xorg python3-xcffib python3-pip python3-cairocffi libcairo2 lightdm python3-psutil
```
Ahora procedemos a instalar qtile mediante pip el cual es el administrador de paquetes para software escrito en python:

```bash
sudo pip3 install qtile
```
Como siguiente paso creamos la estrucura para el archivo de configuracion base:

```bash

mkdir -p ~/.config/qtile/
cp /usr/local/lib/python3.8/dist-packages/libqtile/resources/default_config.py ~/.config/qtile/config.ori
cp -r /usr/local/lib/python3.8/dist-packages/libqtile/resources/layout-icons/ .config/qtile/icons

```
Como ultimo paso datos de alta Qtile en las opciones de windows manager:

```bash

sudo bash -c 'cat > /usr/share/xsessions/qtile-venv.desktop <<EOF
[Desktop Entry]
Name=Qtile(venv)
Comment=Qtile Session Within Venv
Exec=/usr/local/bin/qtile start
Type=Application
Keywords=wm;tiling
EOF'

```

Para comprobar que Qtile de alta de forma correcta ejetutamos el siguiente comando:

```bash
ls /usr/share/xsessions

```
Para optimizar el proceso de instalacion ejecuta el siguiente **[script](https://github.com/fernandopr11/dotfiles-fernando/blob/ubuntu/scripts/install-qtile.sh)**, es necesario asignarle permisos de ejecucion mediante el siguiente comando:

```bash

chmod u+x install-qtile.sh

```








