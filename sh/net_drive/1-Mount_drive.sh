#!/bin/bash

# Что монтировать - данные с сетевого диска
IP=192.168.70.30
FOLDER_NET=Soft

# Куда монтировать. Данные с локальлного диска
FOLDER_LOCAL=/mnt/netdrive/soft

########################     CONSTANTA     ################################

# Проверить, существует ли каталог, куда монтировать. Если его нет, то он будет создан
ls  $FOLDER_LOCAL || mkdir -p $FOLDER_LOCAL
#Монтирование
mount -t cifs //$IP/$FOLDER_NET $FOLDER_LOCAL -o  credentials=/etc/credential  -o  vers=3.0

# Показать результат
echo ----REZULTAT--------
df -h | grep /mnt

exit 0
