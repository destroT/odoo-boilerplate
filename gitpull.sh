#!/bin/bash

DIRPATH=${1:-$( cd -- "$( dirname -- "$0"; )" &> /dev/null && pwd )}

echo "\n\nCURRENT WORKING FOLDER: $DIRPATH\n\n"

mkdir -p $DIRPATH/OCA
cd $DIRPATH/OCA

git clone https://github.com/OCA/account-analytic.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-budgeting.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-closing.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-financial-reporting.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-financial-tools.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-invoice-reporting.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-invoicing.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-payment.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/account-reconcile.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/bank-payment.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/bank-statement-import.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/brand.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/calendar.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/commission.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/connector.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/connector-telephony.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/contract.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/currency.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/credit-control.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/crm.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/data-protection.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/ddmrp.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/dms.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/delivery-carrier.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/edi.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/event.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/e-commerce.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/fleet.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/geospatial.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/helpdesk.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/hr.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/hr-attendance.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/hr-expense.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/hr-holidays.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/intrastat-extrastat.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/knowledge.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/l10n-italy.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/maintenance.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/management-system.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/manufacture.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/manufacture-reporting.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/margin-analysis.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/mis-builder.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/operating-unit.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/partner-contact.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/product-attribute.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/product-configurator.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/product-variant.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/project.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/purchase-reporting.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/purchase-workflow.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/queue.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/rest-framework.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/reporting-engine.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/report-print-send.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/sale-reporting.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/sale-workflow.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/server-auth.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/server-backend.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/server-brand.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/server-env.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/server-tools.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/server-ux.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/social.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/stock-logistics-barcode.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/stock-logistics-reporting.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/stock-logistics-tracking.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/stock-logistics-transport.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/stock-logistics-warehouse.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/stock-logistics-workflow.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/storage.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/survey.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/timesheet.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/web.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/website.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/OCA/wms.git -b 14.0 --depth=1 --single-branch

cd ..
mkdir -p $DIRPATH/external-addons/repos
mkdir -p $DIRPATH/external-addons/addons
cd $DIRPATH/external-addons/repos

# # MUK
git clone https://github.com/muk-it/muk_base.git -b 14.0 --depth=1 --single-branch
# git clone https://github.com/muk-it/muk_dms.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/muk-it/muk_web.git -b 14.0 --depth=1 --single-branch

# # Serpent
git clone https://github.com/JayVora-SerpentCS/fleet_management.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/JayVora-SerpentCS/SerpentCS_Contributions.git -b 14.0 --depth=1 --single-branch

# # Cybrosys
git clone https://github.com/CybroOdoo/OpenHRMS.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/CybroOdoo/CybroAddons.git -b 14.0 --depth=1 --single-branch

# # Others
git clone https://github.com/Jarsa/transport-management-system.git -b 14.0 --depth=1 --single-branch
# git clone https://gitlab.com/hailangvn/task-pomodoro.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/gityopie/odoo-addons.git -b 14.0 --depth=1 --single-branch
git clone https://github.com/ksolves-store/web_listview_sticky_header.git -b 14.0 --depth=1 --single-branch

#git clone https://github.com/EESTISOFT/ees_columns_toggles.git -b 14.0 --depth=1
#git clone https://github.com/EESTISOFT/ees_sticky_table_header.git -b 14.0 --depth=1

cd ..

# attivo extglob nella shell che non è attiva per default
shopt -s extglob

# ciclo for sulle sotto-cartelle dei git, ma escludo le cartelle setup
for d in $DIRPATH/external-addons/repos/*/*/
do
    # Forza creazione link simbolici
     ln -sfn $d $DIRPATH/external-addons/addons/
done

cd $DIRPATH
