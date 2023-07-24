#!/bin/bash

MAN="
This script is to create the virtual environment and clone all the necessary repos 

    -o, --OpenUpgrade       Download and prepare OpenUpgrade

    -c, ---custom-addons    Custom Addons Directory
    
    -d, --dir-path          [Optional] Select different base directory (do not touch if you don't know)
    
    "

# Assign variable to path
DIRPATH=$(cd -- "$( dirname -- "$0"; )" &> /dev/null && pwd)
CUSTOM_ADDONS=/home/odoo/chiarcosso_odoo
OPEN_UPGRADE=False

while [ True ]; do
if [ "$1" = "--help" -o "$1" = "-h" ]; then
    echo $MAN
    return
elif  [ "$1" = "--OpenUpgrade" -o "$1" = "-o" ]; then
    OPEN_UPGRADE=True
    shift 1
elif [ "$1" = "--custom-addons" -o "$1" = "-c" ]; then
    CUSTOM_ADDONS=$2
    shift 2
elif [ "$1" = "--dir-path" -o "$1" = "-d" ]; then
    DIRPATH=$( cd -- "$( dirname -- "$2"; )" &> /dev/null && pwd )
    shift 2
else
    break
fi
done

# Prepare virtualenv
pip install --upgrade pip
python3 -m venv venv
. $DIRPATH/venv/bin/activate

# Clone directories
cd $DIRPATH
pip install -r $DIRPATH/requirements.txt
gitaggregate -c repos.yaml -j 100

# Install python dependencies
pip install wheel pysftp
pip install -r $DIRPATH/odoo/requirements.txt
pip install -r $CUSTOM_ADDONS/requirements.txt

# Installing Odoo allows VsCode to locate all modules but can cause problems
# pip install $DIRPATH/odoo/

# Config OpenUpgrade
if [ $OPEN_UPGRADE = True ]; then
    gitaggregate -c repos-ou.yaml -j 20
    pip install -r $DIRPATH/OpenUpgrade/requirements.txt
    pip install git+https://github.com/OCA/openupgradelib.git
fi

deactivate

