#!/bin/bash -x
wget https://github.com/sukcbb/klcourse/raw/master/inventory.sas7bdat
sudo cp inventory.sas7bdat /opt/sas/viya/config/var/lib/evmsvrops/evdm/log/log/inventory.sas7bdat
sudo /etc/init.d/sas-viya-ops-agentsrv-default restart
