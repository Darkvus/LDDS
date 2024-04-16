#!/bin/bash
echo "Set global variables"
export DEBIAN_FRONTEND=noninteractive
export TZ=UTC
echo "Actualización de paquetes"
echo "Instalación de dependencias"
apt-get install -y wget gpg
echo "Instalación GDAL"
apt-get install -y gdal-bin libgdal-dev install libspatialite7                                                                                                                          
echo "GDAL INSTALADO"
sleep 1
echo "Instalación GitHub CLI"
wget https://github.com/cli/cli/releases/download/v2.45.0/gh_2.45.0_linux_386.deb 
dpkg -i gh_2.45.0_linux_386.deb
echo "GitHub CLI INSTALADO"
echo "Instalación Pyenv"
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
echo "Pyenv INSTALADO"
echo "Configuración de Pyenv en el perfil de Bash"
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
source ~/.bashrc
echo "Configuración de Pyenv en el perfil de Bash COMPLETADO"
sleep 5s
echo "Instalación Python 3.9.16"
PYTHON_CONFIGURE_OPTS="--enable-loadable-sqlite-extensions" pyenv install 3.9.16
echo "Python 3.9.16 INSTALADO"
sleep 5s
echo "Set version 3.9.16 as global"
pyenv global 3.9.16
echo "Versión 3.9.16 establecida como global"
sleep 5s
echo "Instalación de dependencias de Python"
pip install --upgrade pip
pip install poetry==1.6.1
apt update && apt upgrade -y
echo "Instalación de dependencias COMPLETADA"