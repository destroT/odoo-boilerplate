#!/bin/bash

source venv/bin/activate

python3 -m ptvsd --host 0.0.0.0 --port 5678 odoo/odoo-bin -c odoo.conf --dev=xml ${1: } ${2: }
