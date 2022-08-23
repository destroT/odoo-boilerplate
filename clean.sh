#!/bin/bash
deactivate

SCRIPT_DIR=$( cd -- "$( dirname -- "$0"; )" &> /dev/null && pwd )

echo "Cleaning $SCRIPT_DIR"
sleep 1

rm -rf $SCRIPT_DIR/odoo/
rm -rf $SCRIPT_DIR/OpenUpgrade/
rm -rf $SCRIPT_DIR/OCA/
rm -rf $SCRIPT_DIR/external-addons/
rm -rf $SCRIPT_DIR/venv
