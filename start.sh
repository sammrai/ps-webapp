/etc/init.d/fcgiwrap start
chmod 777 /var/run/fcgiwrap.socket

nginx -g "daemon off;"