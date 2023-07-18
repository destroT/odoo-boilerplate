#!/bin/bash

# Configure all dependencies, create new Odoo user and setup postgresql

# Install dependencies
sudo apt update
sudo apt upgrade -y
sudo apt install -y zip
sudo apt install -y gdebi-core
sudo apt install -y python3 python3-pip python3-dev python3-setuptools python3-wheel python3-venv python3-lxml
sudo apt install -y xfonts-75dpi xfonts-base fonts-noto-mono fonts-noto fontconfig
sudo apt install -y postgresql postgresql-contrib
sudo apt install -y build-essential zlib1g-dev libxslt1-dev libxml2-dev libldap2-dev libsasl2-dev libpq-dev libmysqlclient-dev
sudo apt install -y cups python3-cups libcups2-dev cups-pdf
sudo apt install -y openssl libssl-dev
sudo apt install -y openssh-server
sudo apt install -y vsftpd
sudo apt install -y npm node-less
sudo apt install -y multitail
sudo npm install -g less
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo dpkg -i wkhtmltox_0.12.5-1.jammy_amd64


# Create Users
sudo adduser -group odoo
sudo su - postgres -c "createuser -s odoo" 2> /dev/null || true 

# Create log directory
sudo mkdir /var/log/odoo
sudo chown odoo:odoo /var/log/odoo
