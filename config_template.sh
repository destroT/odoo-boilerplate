#!/bin/sh

# 1: y prepare script for open_upgrade
# 2: base folder (script folder)
# 3: custom addons folder (/home/odoo/chiarcosso_odoo)
# 4: appstore folder location (/home/odoo/appstore)

OPEN_UPGRADE=$1
BASE_FOLDER=$2
CUSTOM_ADDONS=$3
APPSTORE=$4
ODOO_PATH="$BASE_FOLDER/odoo/addons,$BASE_FOLDER/odoo/odoo/addons" 

if [ $1 = "y" ]; then
	ODOO_PATH="$BASE_FOLDER/OpenUpgrades/addons,$BASE_FOLDER/OpenUpgrades/odoo/addons"
fi;

# Template
cat << EOF
[options]
addons_path = $ODOO_PATH,
        $CUSTOM_ADDONS, 
	$APPSTORE/home/odoo/appstore13,
        $BASE_FOLDER/external-addons/addons,
        $BASE_FOLDER/OCA/account-analytic,
    $BASE_FOLDER/OCA/account-budgeting,
    $BASE_FOLDER/OCA/account-closing,
    $BASE_FOLDER/OCA/account-financial-reporting,
    $BASE_FOLDER/OCA/account-financial-tools,
    $BASE_FOLDER/OCA/account-invoice-reporting,
    $BASE_FOLDER/OCA/account-invoicing,
    $BASE_FOLDER/OCA/account-payment,
    $BASE_FOLDER/OCA/account-reconcile,
    $BASE_FOLDER/OCA/bank-payment,
    $BASE_FOLDER/OCA/bank-statement-import,
    $BASE_FOLDER/OCA/brand,
    $BASE_FOLDER/OCA/calendar,
    $BASE_FOLDER/OCA/commission,
    $BASE_FOLDER/OCA/connector,
    $BASE_FOLDER/OCA/contract,
    $BASE_FOLDER/OCA/credit-control,
    $BASE_FOLDER/OCA/crm,
    $BASE_FOLDER/OCA/currency,
    $BASE_FOLDER/OCA/data-protection,
    $BASE_FOLDER/OCA/ddmrp,
    $BASE_FOLDER/OCA/delivery-carrier,
    $BASE_FOLDER/OCA/dms,
    $BASE_FOLDER/OCA/event,
    $BASE_FOLDER/OCA/fleet,
    $BASE_FOLDER/OCA/geospatial,
    $BASE_FOLDER/OCA/helpdesk,
    $BASE_FOLDER/OCA/hr,
    $BASE_FOLDER/OCA/hr-attendance,
    $BASE_FOLDER/OCA/hr-expense,
    $BASE_FOLDER/OCA/hr-holidays,
    $BASE_FOLDER/OCA/intrastat-extrastat,
    $BASE_FOLDER/OCA/knowledge,
    $BASE_FOLDER/OCA/l10n-italy,
    $BASE_FOLDER/OCA/maintenance,
    $BASE_FOLDER/OCA/management-system,
    $BASE_FOLDER/OCA/manufacture,
    $BASE_FOLDER/OCA/manufacture-reporting,
    $BASE_FOLDER/OCA/margin-analysis,
    $BASE_FOLDER/OCA/mis-builder,
    $BASE_FOLDER/OCA/operating-unit,
    $BASE_FOLDER/OCA/partner-contact,
    $BASE_FOLDER/OCA/product-attribute,
    $BASE_FOLDER/OCA/product-configurator,
    $BASE_FOLDER/OCA/product-variant,
    $BASE_FOLDER/OCA/project,
    $BASE_FOLDER/OCA/purchase-reporting,
    $BASE_FOLDER/OCA/purchase-workflow,
    $BASE_FOLDER/OCA/queue,
    $BASE_FOLDER/OCA/reporting-engine,
    $BASE_FOLDER/OCA/report-print-send,
    $BASE_FOLDER/OCA/rest-framework,
    $BASE_FOLDER/OCA/sale-reporting,
    $BASE_FOLDER/OCA/sale-workflow,
    $BASE_FOLDER/OCA/server-auth,
    $BASE_FOLDER/OCA/server-backend,
    $BASE_FOLDER/OCA/server-brand,
    $BASE_FOLDER/OCA/server-env,
    $BASE_FOLDER/OCA/server-tools,
    $BASE_FOLDER/OCA/server-ux,
    $BASE_FOLDER/OCA/social,
    $BASE_FOLDER/OCA/stock-logistics-barcode,
    $BASE_FOLDER/OCA/stock-logistics-reporting,
    $BASE_FOLDER/OCA/stock-logistics-tracking,
    $BASE_FOLDER/OCA/stock-logistics-transport,
    $BASE_FOLDER/OCA/stock-logistics-warehouse,
    $BASE_FOLDER/OCA/stock-logistics-workflow,
    $BASE_FOLDER/OCA/storage,
    $BASE_FOLDER/OCA/survey,
    $BASE_FOLDER/OCA/timesheet,
    $BASE_FOLDER/OCA/web,
    $BASE_FOLDER/OCA/website,
    $BASE_FOLDER/OCA/wms
admin_passwd = admin
csv_internal_sep = ,
db_host = False
db_maxconn = 128
db_name = False
db_password = odoo
db_port = False
db_sslmode = prefer
db_template = template0
db_user = odoo
dbfilter =
demo = {}
email_from = False
http_enable = True
http_interface =
;http_port = 8069
tcp_port = 8069
xmlrpc_port = 8069
import_partial =
limit_memory_hard = 2684354560
limit_memory_soft = 2147483648
limit_request = 8192
limit_time_cpu = 600
limit_time_real = 1200
limit_time_real_cron = -1
list_db = True
log_db = False
log_db_level = warning
log_handler = :INFO
logfile = /var/log/odoo/upgrade-13.log
logrotate = True
longpolling_port = 8072
max_cron_threads = 1
osv_memory_age_limit = 1.0
osv_memory_count_limit = False
pg_path = None
pidfile = None
proxy_mode = False
reportgz = False
smtp_password = False
smtp_port = 25
smtp_server = localhost
smtp_ssl = False
smtp_user = False
syslog = False
test_enable = False
test_file = False
test_tags = None
translate_modules = ['all']
unaccent = False
without_demo = False
workers = 0
production = False
running_env=develoment


[queue_job]
channels = root:1,cvs:1

[api_key_kronotech]
key=9d8d4f7a-8bde-4edf-8cdd-51909d460cdc
EOF
