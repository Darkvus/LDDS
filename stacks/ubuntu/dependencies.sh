#!/bin/bash
echo "Actualización de paquetes"
apt-get update && apt-get -y install sudo
echo "Instalación de dependencias"
apt-get install -y wget gpgç
apt-get install -y git
echo "Instalación GDAL"
sudo apt-get install -y gdal-bin libgdal-dev install libspatialite7                                                                                                                          
echo "GDAL INSTALADO"
sleep 1
echo "Instalación GitHub CLI" mkdir -p -m 755 /etc/apt/keyrings && wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& apt update \
&& apt install gh -y
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