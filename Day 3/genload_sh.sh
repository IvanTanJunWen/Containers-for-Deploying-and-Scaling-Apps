#!/bin/bash
while sleep 0.5; do
	echo "http GET 159.89.211.194 Host:myapp.com `date`"
    curl -f --header 'Host: myapp.com' 139.59.220.51 > /dev/null
	#http GET 159.89.211.194 Host:myapp.com > /dev/null
done
