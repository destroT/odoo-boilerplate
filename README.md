# Odoo 14 

Script necessari all'installazione di tutte le componenti necessarie ad eseguire Odoo in un ambiente di sviluppo nuovo o già esistente.

## configuration.sh

Questo script clone le cartelle di Odoo e OpenUpgrade, successivamente crea un ambiente virtuale e installa tutte le dipendenze necessarie.

> NB: Loo script è configurato per python 3.8 (ci sono dipendeze a scelta nei requirements di Odoo)

## gitpull.sh

Clone di tutti gli addons esterni ai moduli custom (OCA, Cybrosys, Serpent, ecc...)

> NB: dovrebbe essere già richiamato da `configuration.sh`

## clean.sh

Elimina tutte le cartelle create dagli script

## config_template.sh

### Parametri

1. y prepare script for open_upgrade
2. base folder (script folder)
3. custom addons folder (/home/odoo/chiarcosso_odoo)
4. appstore folder location (/home/odoo/appstore)

Genera un file di configurazione standard. 

## TODO

- [ ] Unificare gli script
