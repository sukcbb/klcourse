#!/bin/bash -x

COMPLEX="false"
if [ "$1" = "complex" ];
    then
        COMPLEX="true"
        echo You have accepted the challenge!
fi


if grep -q -i "release 6" /etc/redhat-release ; then
  majversion=6
elif grep -q -i "release 7" /etc/redhat-release ; then
  majversion=7
else
  echo "Apparently, running neither release 6.x nor 7.x "
  exit;
fi

ssh -o StrictHostKeyChecking=no -l "cloud-user" "sasviya02"
ssh -o PasswordAuthentication=no cloud-user@sasviya02
wget https://github.com/sukcbb/klcourse/raw/master/inventory.sas7bdat
sudo cp inventory.sas7bdat /opt/sas/viya/config/var/lib/evmsvrops/evdm/log/log/inventory.sas7bdat
sudo /etc/init.d/sas-viya-ops-agentsrv-default restart
