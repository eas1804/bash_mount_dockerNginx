#!/bin/bash

# Что монтироват
IP=192.168.70.30
FOLDER_NET=Soft
# Куда монтировать
FOLDER_LOCAL=//mnt/netdrive
mount -t cifs //$IP/$FOLDER_NET $FOLDER_LOCAL -o  credentials=/etc/credential  -o  vers=3.0
# Показать результат
echo ----REZULTAT--------
df -h | grep /mnt
exit 0
