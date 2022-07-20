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


# Clone directories
cd $DIRPATH
git clone https://github.com/odoo/odoo.git -b 13.0 --depth=1 --single-branch
sh $DIRPATH/gitpull.sh

# Prepare reuirements for odoo 3.8
sed -i -e "/< '3.7'/d" -e "/<\= '3.7'/d" -e "/\=\= '3.7'/d" -e "/< '3.8'/d"  -e "/\=\= 'win32'$/d" $DIRPATH/odoo/requirements.txt

# Prepare virtualenv
pip install --upgrade pip
python3 -m venv venv
. $DIRPATH/venv/bin/activate

pip install wheel
pip install pysftp
pip install -r $DIRPATH/odoo/requirements.txt
pip install -r $CUSTOM_ADDONS/requirements.txt

# Config OpenUpgrade
if [ $OPEN_UPGRADE = True ]; then
    git clone https://github.com/OCA/OpenUpgrade.git -b 13.0 --depth=1 --single-branch
    pip install -r $DIRPATH/OpenUpgrade/requirements.txt
    pip install git+https://github.com/OCA/openupgradelib.git
fi

deactivate
