# Odoo 13 

Scripts needed to install all the components necessary to run Odoo in a new or existing development environment.

**Add custom folder to addons path and get detected by VsCode**
```bash
ln -fs $PATH/to/custom/python/module $DIRPATH/venv/lib/python3.8/site-packages/odoo/addons
```

## Setup and execution

**OpenUpgrade**

```bash
# If not alredy configured
source setup.sh -o -c /home/odoo/chiarcosso_odoo
# If conf file does not exists
source make_config_file.sh -o -c /home/odoo/chiarcosso_odoo -a /home/odoo/appstore >> ou.conf
. venv/bin/activate
OpenUpgrade/odoo/odoo-bin -c ou.conf -u all -d your_db --stop-after-init
odoo/odoo-bin -c odoo.conf -d your_db -u all --stop-after-init
```

**Standard**

```bash
# If not alredy configured
source setup.sh -c /home/odoo/chiarcosso_odoo
# If conf file does not exists
source make_config_file.sh -c /home/odoo/chiarcosso_odoo -a /home/odoo/appstore >> odoo.conf
. venv/bin/activate
OpenUpgrade/odoo/odoo-bin -c odoo.conf -d your_db
```

> NB: With **OpenUpgrade** setup you can run also **standard Odoo**
## Scripts

### setup.sh

```
This script is to create the virtual environment and clone all the necessary repos
    
    -o, --OpenUpgrade       Download and prepare OpenUpgrade
    -c, ---custom-addons    Custom Addons Directory
    -d, --dir-path          [Optional] Select different base directory (do not touch if you don't know)
```

This script clones the Odoo and OpenUpgrade folders, then creates a virtual environment and installs all necessary dependencies.

> NB: The script is configured for python 3.8 (there are dependencies of your choice in the Odoo requirements)
### make_config_file.sh

```
This script will automatically generate the Odoo configuration file
    -o, --OpenUpgrade       Select configuration file type
                              with True or 'y' or 'yes': Create config file for Open Upgrade version
                              with False or 'n' or 'no': Create standard setup file
    -c, ---custom-addons    Custom Addons Directory
    
    -a, --Appstore          Appstore addons directory
    -b, --base-folder       [Optional] Select different base directory (do not touch if you don't know)
```

This script allows you to generate an Odoo configuration file with several parameters.

> Esempio: ```bash source make_config_file.sh -c /home/odoo/addons -a /home/odoo/appstore >> /etc/odoo/new_conf.conf ```
### clean.sh

Delete all folders created by scripts:
    - odoo
    - OpenUpgrade
    - OCA
    - external-addons
    - venv

### gitpull.sh

Clone all addons external to Odoo modules (OCA, Cybrosys, Serpent, ecc...)

> NB: No need to run it manually, it is already used by `setup.sh`

## TODO

- [ ] Add configuration file
- [ ] Unificare gli script
