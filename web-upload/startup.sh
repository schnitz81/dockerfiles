#!/bin/sh

# set user & passwd if used as input parameters
if [ "$#" -ne 2 ]; then
	echo "User and/or password not entered correctly. Skipping basicauth creation. Using previous if existing."
else
	# generate htpasswd file
	echo "$2" | htpasswd -i -c /etc/nginx/.htpasswd "$1"

	# delete any old htpasswd lines in nginx conf
	sed -i '/auth_basic/ d' /etc/nginx/nginx.conf

	# set htpasswd in nginx conf
	sed -i '/location \//a \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ auth_basic "Upload area";' /etc/nginx/nginx.conf
	sed -i '/Upload area/a \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ auth_basic_user_file \/etc\/nginx\/.htpasswd;' /etc/nginx/nginx.conf
fi

# start services
/usr/sbin/nginx &
/usr/sbin/php-fpm83 &

# keep container running
sleep infinity
