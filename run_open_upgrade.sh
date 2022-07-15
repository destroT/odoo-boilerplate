dir=$(pwd)
. venv/bin/activate
$dir/OpenUpgrade/odoo-bin -c /etc/odoo/13odoo.conf \
           --stop-after-init --load=base,web,openupgrade_framework \
           -d $1 -u all
