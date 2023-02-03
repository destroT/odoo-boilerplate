#!/bin/bash

DIRPATH=$(cd -- "$( dirname -- "$0"; )" &> /dev/null && pwd)

for d in $DIRPATH/OCA/*/
do
	git -C $d pull
done

for d in $DIRPATH/external-addons/repos/*/
do
	git -C $d pull
done
