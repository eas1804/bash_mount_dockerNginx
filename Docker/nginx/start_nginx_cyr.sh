#!/bin/bash

docker run --name nginx-soft \
-v /mnt/netdrive/soft/:/usr/share/nginx/html:ro \
-p 8081:80 \
-d eas1804/nginx_files 

docker ps | grep  my-nginx 
