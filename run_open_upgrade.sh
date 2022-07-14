dir=$(pwd)
. venv/bin/activate
./odoo/odoo-bin -c /etc/odoo/14odoo.conf \
           --stop-after-init --load=base,web,openupgrade_framework \
           --upgrade-path=$dir/OpenUpgrade/openupgrade_scripts/scripts/ \
           -d upd13 -u all
