#!/bin/bash -x
ssh cloud-user@sasviya02 wget https://github.com/sukcbb/klcourse/raw/master/inventory.sas7bdat
ssh cloud-user@sasviya02 sudo cp inventory.sas7bdat /opt/sas/viya/config/var/lib/evmsvrops/evdm/log/log/inventory.sas7bdat
ssh cloud-user@sasviya02 sudo /etc/init.d/sas-viya-ops-agentsrv-default restart
ssh cloud-user@sascas01 sudo /etc/init.d/sas-viya-all-services restart
ssh cloud-user@sascas02 sudo /etc/init.d/sas-viya-all-services restart
ssh cloud-user@sascas03 sudo /etc/init.d/sas-viya-all-services restart
