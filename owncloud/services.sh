echo "START owncloud thingy"
htpasswd -c /etc/nginx/.htpasswd owncloud

service php5-fpm start
service nginx start

chown -R www-data:www-data /var/www/
