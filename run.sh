dir=$(pwd)
. venv/bin/activate
$dir/OpenUpgrade/odoo-bin -c /etc/odoo/odoo.conf \
           --stop-after-init --load=base,web \
           -d $1 -u all
