#!/bin/bash
# Assign variable to path

custom_addons=/home/odoo/chiarcosso_odoo
DIRPATH=$(pwd)
echo $DIRPATH

# Clone directories
cd $DIRPATH
git clone https://github.com/OCA/OpenUpgrade.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/odoo/odoo.git -b 14.0 --depth=1 --single-branch

sh ./$DIRPATH/gitpull.sh $DIRPATH

# Prepare reuirements for odoo 3.8
sed -i -e "/< '3.7'/d" -e "/<\= '3.7'/d" -e "/\=\= '3.7'/d" -e "/< '3.8'/d" $DIRPATH/odoo/requirements.txt

# Prepare virtualenv
pip install --upgrade pip
python3 -m venv venv
. venv/bin/activate

pip install wheel
pip install -r $DIRPATH/odoo/requirements.txt
pip install -r $DIRPATH/OpenUpgrade/requirements.txt
pip install git+https://github.com/OCA/openupgradelib.git
pip install -r $custom_addons/requirements.txt


deactivate

