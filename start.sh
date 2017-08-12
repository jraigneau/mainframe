#!/bin/bash
path=`pwd`
docker run --restart=always -v=$path:/usr/share/nginx/html:ro -v $path/nginx-conf/nginx.conf:/etc/nginx/nginx.conf:ro  --name mainframe -p 80:80 -d nginx
